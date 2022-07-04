require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
    'Hello Anicka!'
  end

get '/second' do
    erb :second
end

get '/:name' do |name|
    erb :index, :locals => {:name=>name} 
  end


