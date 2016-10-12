require 'spec_helper'

feature 'name input', :type => feature do
  scenario "user creates a name" do
    visit '/'

    fill_in('player1_name', with: 'Akram')
    fill_in('player2_name', with: 'Anna')
    click_button "Submit"

    expect(page).to have_text('Akram')
    expect(page).to have_text('Anna')
  end
end
