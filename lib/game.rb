require './lib/player'

class Game

  attr_reader :players, :current_victim, :attacker, :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    # @players = [@player_1, @player_2]
    @current_victim = @player_2
    @attacker = @player_1
  end

  def attack

    @current_victim.receive_damage
    switch_turn
  end

  def switch_turn
    # @players.reverse!
    if @current_victim == @player_1 && @attacker == @player_2
      @current_victim = @player_2
      @attacker = @player_1
    else
      @current_victim = @player_1
      @attacker = @player_2
    end
  end
end
