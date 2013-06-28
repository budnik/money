class CountriesCurrencies < ActiveRecord::Base
  belongs_to :country
  belongs_to :currencies
end
