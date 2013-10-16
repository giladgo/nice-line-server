require 'data_mapper'

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/lines.db")

class Line
  include DataMapper::Resource

  property :id, Serial
  property :line, String
end

DataMapper.finalize.auto_upgrade!
