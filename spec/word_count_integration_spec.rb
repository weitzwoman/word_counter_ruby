require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('word counter', {:type => :feature}) do
  it("takes word input and sentence input to count frequency of word in sentence") do
    visit('/')
    # select("Paper", :from => 'player1Input')
    # click_button('One, Two, Go Play!')
    # expect(page).to have_no_content("error")
  end
end
