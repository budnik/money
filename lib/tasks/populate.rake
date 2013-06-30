require 'rake/task'
task :foo

# #require 'savon'
# namespace :foo do
#   task :populate => [:envioirment] do
#     # resp = Savon.client do
#     #   wsdl 'http://www.webservicex.net/country.asmx?WSDL'
#     #   convert_request_keys_to :camelcase
#     # end.call :get_currencies

#      # response format:
#      # <Table>
#      #    <Name>North Korea</Name>
#      #    <CountryCode>kp</CountryCode>
#      #    <Currency>Won</Currency>
#      #    <CurrencyCode>KPW</CurrencyCode>
#      #  </Table>

#     Nokogiri.XML(resp.doc).xpath('//Table').group_by{|c| c.at('Currency').text}

#   end
# end
