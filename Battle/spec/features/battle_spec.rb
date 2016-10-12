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

feature 'p1 attack p2', :type => feature do
  scenario 'p1 is able to attack p2 and get confirmation' do
    sign_in_and_play

    find_button('p1_attack').click
    expect(page).to have_content("punched")
  end
end
