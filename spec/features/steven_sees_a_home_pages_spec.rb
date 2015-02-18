require 'rails_helper'

RSpec.feature "StevenSeesAHomePages", type: :feature do
  scenario "steven sees the word welcome" do
    #act
    visit '/'
    #assert
    expect(page).to have_content("Welcome")

  end

  scenario "Steve can go to about page" do
    visit '/'
    click_link 'About'
    expect(page).to have_content('Crafted by Alex M')
  end

  scenario "Steven adds Vegetable" do
    visit '/vegetables'
    click_link "Add an Ingredient"
    # within('#veggie') do
      fill_in "name", with: "Cucumber"
      fill_in "quantity", with: 12
      click_button "Add Ingredient"
    # end
    expect(page).to have_content("Cucumber: 12")
  end
end
