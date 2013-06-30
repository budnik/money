class CreateJoinTableCountriesCurrencies < ActiveRecord::Migration
  def change
    create_join_table :countries, :currencies do |t|
    end
  end
end
