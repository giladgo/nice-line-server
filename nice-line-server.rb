require 'sinatra'
require 'json'
require './lines'

get '/line' do
  lines = Lines.lines
  lines[rand(lines.length)]
end

get '/lines' do
  Lines.lines.to_json
end

put '/add' do
  line_text = params[:line]
  line = Line.new(:line => line_text)
  line.save!
end