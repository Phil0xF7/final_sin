require 'rubygems'
require 'sinatra'
require 'json'
require 'haml'


if development? # This is set by default, override with `RACK_ENV=production rackup`
  require 'sinatra/reloader'
  require 'debugger'
  Debugger.settings[:autoeval] = true
  Debugger.settings[:autolist] = 1
  Debugger.settings[:reload_source_on_change] = true
end

get '/' do
  'Index'
end

get '/entries/:id' do
  erb :index
end

put '/entries/:id' do
  redirect '/entries/3'
end