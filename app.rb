require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :sessions
        set :session_secret, "secretive"
    end

    get '/' do
        session[:item] = ""
        @session = session 
        erb :index
    end 

    post '/checkout' do
        erb :purchased_item     
    end



end