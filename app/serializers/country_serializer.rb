class CountrySerializer < ActiveModel::Serializer
  attributes :id, :code, :name, :visited?
end
