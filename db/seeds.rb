# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Country.create [
{code:"tz", name:"United Republic of Tanzania"},
{code:"so", name:"Somalia"},
{code:"ke", name:"Kenya"},
{code:"et", name:"Ethiopia"},
{code:"ug", name:"Uganda"},
{code:"sd", name:"Sudan"},
{code:"ca", name:"Canada"},
{code:"us", name:"United States"},
{code:"mx", name:"Mexico"},
{code:"bs", name:"Bahamas"},
{code:"tt", name:"Trinidad and Tobago"},
{code:"gd", name:"Grenada"},
{code:"vc", name:"St. Vincent and the Grenadines"},
{code:"bb", name:"Barbados"},
{code:"lc", name:"St. Lucia"},
{code:"mq", name:"Martinique"},
{code:"dm", name:"Dominica"},
{code:"gp", name:"Guadeloupe"},
{code:"ag", name:"Antigua and Barbuda"},
{code:"kn", name:"St. Kitts and Nevis"},
{code:"ar", name:"Argentina"},
{code:"cl", name:"Chile"},
{code:"fk", name:"Falkland Islands"}]

Currency.create name: 'Peso', code: 'MXP' do |peso|
  peso.countries = [Country.find_by_name('Mexico')]
end

Currency.create name: 'Dollar', code: 'USD' do |usd|
  usd.countries = [Country.find_by_name('United States')]
end

Trip.create description: "That was awesome", date: Date.today do |t|
  t.countries = Country.order('RANDOM()').first(1+rand(3))
end
