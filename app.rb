require 'sinatra'

get '/' do
  "Hello"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  @middlename = params[:middlename]
  @lastname = params[:lastname]
  erb(:index)
end


set :session_secret, 'super secret'
