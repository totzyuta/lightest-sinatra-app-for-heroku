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
  require './models/db'
end

class User < ActiveRecord::Base
end

get '/' do
  @users = User.all
  slim :index
end

post '/' do
  user = User.new
  user.email = params[:email]
  user.order = params[:order]
  user.save
  redirect "/" 
end
