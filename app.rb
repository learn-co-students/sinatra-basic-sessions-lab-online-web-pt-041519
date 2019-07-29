require_relative 'config/environment'
class App < Sinatra::Base

  # Enable sessions
  configure do
	  enable :sessions
	  set :session_secret, "secret"
	end 

  # Index page
  get '/' do
    erb :index
  end

  # Checkout page
  post '/checkout' do
    # Add params to @session hash
    session[:item] = params[:item]
    @session = session

    # Display checkout.erb
    erb :checkout
  end



end