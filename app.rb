require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/counter-form') do
  @input_word = params.fetch('input_word')
  @input_sentence = params.fetch('input_sentence')
  @counter_output = params.fetch('input_word').word_count(params.fetch('input_sentence'))
  erb(:word_count_output)
end
