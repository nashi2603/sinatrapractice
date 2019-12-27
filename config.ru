require 'rubygems'
require 'sinatra'

$LOAD_PATH << File.join(__dir__)
require 'app/index'
require 'app/api'
require 'app/user'

url_root = ENV['RELATIVE_URL_ROOT'] || '/'

map(url_root) { run Index }
map(url_root + 'api') { run API }
map(url_root + 'user') { run User }

