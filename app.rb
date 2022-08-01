require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/activerecord'
require 'pry-byebug'
require 'better_errors'

require_relative 'config/application'

get '/' do
  'Hello world!'
end

get '/restaurants' do
  @restaurants = Restaurant.all

  erb :restaurants
end

# "https://facebook.com"
# "https://facebook.com/"

# "http://localhost:4567"
