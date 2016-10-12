def sign_in_and_play
  visit '/'

  fill_in('player1_name', with: 'Akram')
  fill_in('player2_name', with: 'Anna')
  click_button "Submit"
end
