require 'game.rb'

describe Game do
  subject(:game) {described_class.new("Anna", "Sarah")}


  describe 'game accepts two player instances' do
    it 'creates two players' do

      expect(game.players[0]).to eq("Anna")
      expect(game.players[1]).to eq("Sarah")
    end
  end

  describe 'player 1 attacks player 2' do
    it 'responds to attack' do
      expect(game).to respond_to(:attack)
    end
    describe 'switches turn' do
      it "changes current victim" do
        game.switch_turn
        expect(game.players).to eq(["Sarah", "Anna"])
      end
    end
  end
end
