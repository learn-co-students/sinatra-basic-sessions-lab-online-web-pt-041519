require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

    configure do
        enable :sessions
        set :sessions_secret, "secret"
    end

    get '/' do
        erb :index
    end

    post '/checkout' do
        session[:item] = params[:item]
    end
end