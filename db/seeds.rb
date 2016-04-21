# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Rails.logger.info "Retrieving data from pokeapi..."
response = Faraday.get("http://pokeapi.co/api/v2/pokemon.json?limit=151")

data = JSON.parse(response.body)

Rails.logger.info "Updating pokedex..."
data['results'].each_with_index do |pokemon, index|
  index = index + 1
  p = Pokemon.new(name: pokemon['name'].capitalize, number: index)
  p.avatar = File.open("#{Rails.root}/lib/assets/avatars/#{"%03d" % index}-#{pokemon['name']}.jpg")
  Rails.logger.info "Creating pokemon: #{p.inspect}"
  p.save!
  Rails.logger.info "#{pokemon['name']} created"
end
