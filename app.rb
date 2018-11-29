require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/tamagotchi')

get('/') do
  # @pet = Tamagotchi.new()
  erb(:input)
end

post('/') do
  @name = params.fetch("name")
  new_pet = Tamagotchi.new(name)
  erb(:output)
end
