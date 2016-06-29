require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scissors')
require('pry')

get ("/") do
  erb(:index)
end

get ("/play") do
  game = Rock_Paper_Scissors.new()
  @p1 = params.fetch('p1')
  @num = rand(2)
  @outcome = game.shoot(@p1, @num)
  erb(:game)
end
