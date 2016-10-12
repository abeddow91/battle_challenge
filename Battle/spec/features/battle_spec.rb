require 'spec_helper'

feature 'name input', :type => feature do
  scenario "user creates a name" do
    sign_in_and_play

    expect(page).to have_text('Akram')
    expect(page).to have_text('Anna')
  end
end
feature 'score', :type => feature do
  scenario "user is able to check opponent's score" do
    sign_in_and_play

    expect(page).to have_content 'score'
  end
end
