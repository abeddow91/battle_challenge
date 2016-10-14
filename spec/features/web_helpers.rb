def sign_in_and_play
  visit('/')
  fill_in :name1, :with => "Truffles"
  fill_in :name2, :with => "Fluffkins"
  click_button "Do a dance"
end
def player_1_wins
  8.times do
    click_button "ATTACK!"
    click_button "go back to battle!"
  end
end
