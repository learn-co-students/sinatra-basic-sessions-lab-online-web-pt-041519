require './config/environment'

configure do
    enable :sessions
    set :session_secret, "heather"
end

run App