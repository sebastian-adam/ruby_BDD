require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the title case path', {:type => :feature}) do
  it('processes the user selection of rock and returns a rock photo') do
    visit('/')
    select('Rock', :from => 'p1')
    click_button('Shoot')
    expect(page).to have_xpath("//img[@src=\"../fist.png\"]")
  end
  it('processes the user selection of paper and returns a paper photo') do
    visit('/')
    select('Paper', :from => 'p1')
    click_button('Shoot')
    expect(page).to have_xpath("//img[@src=\"../paper.png\"]")
  end
  # it('processes the computer selection of paper and returns a paper photo') do
  #   visit('/')
  #   click_button('Shoot')
  #   @num == 0 -- DOESNT WORK 
  #   expect(page).to have_xpath("//img[@src=\"../fist.png\"]")
  # end
  # it('processes the computer selection of paper and returns a paper photo') do
  #   visit('/')
  #   click_button('Shoot')
  #   @num == 1 -- DOESNT WORK
  #   expect(page).to have_xpath("//img[@src=\"../paper.png\"]")
  # end
end
