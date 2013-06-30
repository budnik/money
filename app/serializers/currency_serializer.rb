class CurrencySerializer < ActiveModel::Serializer
  attributes :id, :name, :code, :visited_countries_ids
  has_many :countries
  def visited_countries_ids
    object.countries.visited.pluck :id
  end
end
