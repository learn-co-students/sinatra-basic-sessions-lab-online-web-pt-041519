require_relative 'config/environment'
require 'pry'

configure do
    enable :sessions
    set :session_secret, "secret"
end

class App < Sinatra::Base

    get "/" do 
        erb :new
    end    

    post "/checkout" do 
        @item = Item.new(params)
        #binding.pry
        session[:item] = @item.name

        @session = session
   

        erb :show
    end    
end