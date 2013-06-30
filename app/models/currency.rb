class Currency < ActiveRecord::Base
  has_and_belongs_to_many :countries
  validates :name, :code, presence: true
end
