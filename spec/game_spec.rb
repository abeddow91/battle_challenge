require 'game.rb'

describe Game do
  subject(:game) {described_class.new("Anna", "Sarah")}


  describe 'game accepts two player instances' do
    it 'creates two players' do

      expect(game.player_1).to eq("Anna")
      expect(game.player_2).to eq("Sarah")
    end
  end

  describe 'player 1 attacks player 2' do
    it 'responds to attack' do
      expect(game).to respond_to(:attack)

    end

  end
end
