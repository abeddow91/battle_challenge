require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/name' do
    @name = params[:name]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
