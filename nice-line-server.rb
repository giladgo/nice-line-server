require 'sinatra'
require './lines'

get '/line' do
  lines = Lines.lines
  lines[rand(lines.length)]
end
