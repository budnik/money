class Country < ActiveRecord::Base
  has_and_belongs_to_many :currencies
  has_and_belongs_to_many :trips
  validates :name, :code, presence: true

  scope :visited, ->(_=nil) { joins(:trips) }
  scope :not_visited, ->(_=nil) { joins('left outer join countries_trips on countries.id=countries_trips.country_id').where('countries_trips.country_id is null') }

  def name
    self[:name].split(',').first
  end

  def visited?
    trips.present?
  end
end
