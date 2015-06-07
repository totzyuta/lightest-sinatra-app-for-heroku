require 'bundler/setup'
require 'sinatra'

require 'haml'
require 'sass'
require 'coffee-script'

get '/' do
  @mes = 'Hello!'
  haml :index
end
