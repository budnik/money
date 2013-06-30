# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Country.create [
{code:"TZ", name:"United Republic of Tanzania"},
{code:"SO", name:"Somalia"},
{code:"KE", name:"Kenya"},
{code:"ET", name:"Ethiopia"},
{code:"UG", name:"Uganda"},
{code:"SD", name:"Sudan"},
{code:"CA", name:"Canada"},
{code:"US", name:"United States"},
{code:"MX", name:"Mexico"},
{code:"BS", name:"Bahamas"},
{code:"TT", name:"Trinidad and Tobago"},
{code:"GD", name:"Grenada"},
{code:"VC", name:"St. Vincent and the Grenadines"},
{code:"BB", name:"Barbados"},
{code:"LC", name:"St. Lucia"},
{code:"MQ", name:"Martinique"},
{code:"DM", name:"Dominica"},
{code:"GP", name:"Guadeloupe"},
{code:"AG", name:"Antigua and Barbuda"},
{code:"KN", name:"St. Kitts and Nevis"},
{code:"AR", name:"Argentina"},
{code:"CL", name:"Chile"},
{code:"FK", name:"Falkland Islands"}]

Trip.create description: "That was awesome", date: Date.today do |t|
  t.countries = Country.order('RANDOM()').first(1+rand(3))
end
