require 'sinatra/base'

class Rps < Sinatra::Base
  # enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do 
    p params
    @player_1_name = params[:player_1_name]
    erb :play
  end

  get '/play' do 
    p params
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
