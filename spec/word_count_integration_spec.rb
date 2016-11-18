require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('word counter', {:type => :feature}) do
  it("takes word input and sentence input to count frequency of word in sentence") do
    visit('/')
    fill_in('input_word', :with => "woods")
    fill_in('input_sentence', :with => "are we out of the woods woods")
    click_button('Count Word!')
    expect(page).to have_content(2)
  end
end
