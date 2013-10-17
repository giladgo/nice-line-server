require 'data_mapper'

db_url = ENV['HEROKU_POSTGRESQL_JADE_URL'] || ENV['NICE_LINE_POSTGRES_URL']

DataMapper::setup(:default, db_url)

class Line
  include DataMapper::Resource

  property :id, Serial
  property :line, String
end

DataMapper.finalize.auto_upgrade!
