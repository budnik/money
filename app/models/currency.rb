class Currency < ActiveRecord::Base
  has_and_belongs_to_many :countries, Country.method(:unscoped).to_proc
  has_and_belongs_to_many :visited_countries, Country.method(:visited).to_proc, class_name: Country
  validates :name, :code, presence: true
end
