require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('path for shipping_cost method', {:type=> :feature}) do
  it("allows users to input weight and height of box as well as rarity of orchid and returns shipping cost") do
  visit('/')
  fill_in('weight', :with=> '24')
  fill_in('height', :with=> '16')
  fill_in('rarity', :with=> 'rare')
  click_button('Calculate your shipping costs.')
  expect(page).to have_content(225)
  end

end
