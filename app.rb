require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/counter-form') do
  @input_word = params.fetch('input-word')
  @input_sentence = params.fetch('input-sentence')
  erb(:counter_output)
end
