require 'sinatra'

get '/' do
  "Hello World"
end

get '/home' do
  "Hello there"
end

get '/secret' do
  "Mushrooms are disgusting"
end

set :session_secret, 'super secret'
