require 'spec_helper'
require './lib/player'

feature 'enter_names' do
  scenario 'visiting web page' do
    sign_in_and_play
    expect(page).to have_text("Truffles are yuuuuuu ready!?")
    expect(page).to have_text("Fluffkins are yuuuuuu ready!?")
    expect(page).to have_text("Let Battle Commence!")
  end
end

feature 'see the player points' do
  scenario 'when names page is loaded' do
    sign_in_and_play
    expect(page).to have_text("Fluffkins has 50 points!")
  end
end

feature 'attack player' do
  scenario 'get confirmation when player has been attacked' do
    sign_in_and_play
    click_button "ATTACK!"
    expect(page).to have_text("Truffles has attacked Fluffkins!")
  end
end

feature 'reduce hit points when attacked' do
  scenario 'reduce player 2 HP by 10' do
    sign_in_and_play
    click_button "ATTACK!"
    expect(page).to have_text("Fluffkins's HP has reduced by 10!")
  end
end
feature 'shows who\'s turn it is' do
  scenario 'player 2\'s turn to attack' do
    sign_in_and_play
    click_button "ATTACK!"
    click_button "go back to battle!"
    expect(page).to have_text("Now it's Fluffkins's turn!")
  end
end

feature 'the games ends' do
  scenario 'the game ends with a confirmation "player 1 wins"' do
    sign_in_and_play
    player_1_wins
    click_button "ATTACK"
    expect(page).to have_text("Truffles wins")
  end
end
