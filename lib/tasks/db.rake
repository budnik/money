require 'savon'

namespace :db do
  desc "Populate DB with currency data, use db:populate[strict] for ISO codes instead of names."
  task :populate, [:shortlist] => [:environment] do |_, params|
    resp = Savon.client do
      wsdl 'http://www.webservicex.net/country.asmx?WSDL'
      convert_request_keys_to :camelcase
      logger Rails.logger
      log_level Rails.configuration.log_level
      log true
    end.call :get_currencies
     # response entity example:
     # <Table>
     #    <Name>North Korea</Name>
     #    <CountryCode>kp</CountryCode>
     #    <Currency>Won</Currency>
     #    <CurrencyCode>KPW</CurrencyCode>
     #  </Table>

    country_currencies = Nokogiri.XML(resp.doc).xpath('//Table').map do |table|
      {
       country_name: table.at('Name').text.strip,
       country_code: table.at('CountryCode').text.strip,
       currency_name: table.at('Currency').text.strip,
       currency_code: table.at('CurrencyCode').text.strip
      }
    end.reject do |h|
      # Ignore countries w/o currencies
      params[:shortlist] && h.values_at(:currency_name, :currency_code).any?(&:blank?)
    end.group_by do |cr|
      cr[:country_name]
    end
    
    ActiveRecord::Base.transaction do
      [Country, Currency].each &:destroy_all
      country_currencies.each do |country_name, currencies|
        Country.create name: country_name do |cntr|
          cntr.code = currencies.find{|cc| cc[:country_code][/\w{2,}/]}[:country_code]
          cntr.currencies = currencies.map do |crcy|
            Currency.find_or_create_by_code crcy[:currency_code], name: crcy[:currency_name]
          end
        end
      end
    end
  end
end
