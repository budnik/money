class CreateJoinTableCountriesTrips < ActiveRecord::Migration
  def change
    create_join_table :countries, :trips do |t|
    end
  end
end
