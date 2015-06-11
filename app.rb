require 'bundler/setup'

require 'slim'
require 'sass'
require 'coffee-script'

require 'active_record'
require 'sinatra/activerecord'

if settings.production?
  # Heroku PostgreSQL Database Connecting
  ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'sqlite3://localhost/app.db')
else 
  ActiveRecord::Base.configurations = YAML.load_file('db/database.yml')
  ActiveRecord::Base.establish_connection(:development)
end

class User < ActiveRecord::Base
end

get '/' do
  user = User.new
  user.email = 'email@email.com'
  user.order = 'example order'
  user.save
  @users = User.all
  slim :index
end
