require('rspec')
require('word_count')
require('pry')

describe('String#word_count') do
  # it('converts user input word and string to downcase') do
  #   expect(('Shoe').word_count()).to(eq('shoe'))
  # end
  it('finds frequeny of input word in a sentence string') do
    expect('shake'.word_count('shake shake it off')).to(eq(2))
  end
end
