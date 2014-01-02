require 'bundler'
Bundler.require

class App < Sinatra::Application
  get '/' do
    erb :index
  end
end