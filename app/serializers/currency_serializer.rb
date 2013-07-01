class CurrencySerializer < ActiveModel::Serializer
  attributes :id, :name, :code
  has_many :countries
end
