require 'sinatra/base'
require './lib/player'
require './lib/game'


class Battle < Sinatra::Base

# enable :sessions

  get '/' do
    # $name << session[:name1].inspect
    # $name << session[:name2].inspect
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:name1])
    player_2 = Player.new(params[:name2])
    $game = Game.new(player_1, player_2)
    redirect to('/play')
  end

  get '/play' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    @player_1_hit_points = $game.player_1.hit_points
    @player_2_hit_points = $game.player_2.hit_points
    erb :play
  end

  get '/attack' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    $game.attack
    erb :attack
  end

  run! if app_file == $0

end



# start the server if ruby file executed directly
