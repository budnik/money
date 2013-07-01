class TripSerializer < ActiveModel::Serializer
  attributes :id, :date, :description
  has_many :countries
end
