require 'bundler/setup'
require 'sinatra'

require 'haml'
require 'sass'
require 'coffee-script'

require 'active_record'

ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'sqlite3://localhost/app.db')

class Count < ActiveRecord::Base; end

get '/' do
  @mes = 'Hello!'
  haml :index
end
