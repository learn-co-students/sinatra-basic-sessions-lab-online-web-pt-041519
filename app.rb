require_relative 'config/environment'

class App < Sinatra::Base
  configure do
      enable :sessions
      set :sessions_secret, "Don't_do_this_normally!"
  end
  
  get '/' do
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
    @session = session
  end
end