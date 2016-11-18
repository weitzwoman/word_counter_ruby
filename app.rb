require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/SOMETHING') do
  @ = params.fetch('').()
  erb(:)
end
