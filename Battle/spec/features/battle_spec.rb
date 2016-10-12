require 'spec_helper'

feature 'name input', :type => feature do
  scenario "user creates a name" do
    visit '/'

    fill_in('name', with: 'Akram')
    click_button "Submit"

    expect(page).to have_text('Akram')
  end
end
