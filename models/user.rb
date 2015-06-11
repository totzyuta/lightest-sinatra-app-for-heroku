require 'sqlite3'
require 'sinatra/activerecord'

ActiveRecord::Base.configurations = YAML.load_file('db/database.yml')
ActiveRecord::Base.establish_connection(:development)

class Blogcontent < ActiveRecord::Base
end
