require_relative '../lib/game.rb'
require_relative '../lib/auto_player.rb'
require_relative '../lib/player.rb'

describe Game do

  let(:game){ Game.new }
  let(:player){ Player.new("MrTester") }
  let(:auto_player){ Autoplayer.new }
  let(:won_player){ double :player, selection: paper }
  let(:lost_player){ double :player, selection: rock }

  it 'should be able to switch from one player to two player' do
    expect(game.players).to eq(1)
    game.two_player
    expect(game.players).to eq(2)
  end

  it 'should be able to switch from two player to one player' do
    game.two_player
    game.one_player
    expect(game.players).to eq(1)
  end

  it 'must accept rock, paper or scissors from real player' do
    player.rock
    expect(player.selection).to eq("rock")
  end

  it 'must accept rock, paper or scissors from auto player' do
    auto_player.selection
    expect(auto_player.selection).to satisfy{ |selection| [:rock, :paper, :scissors].include?(selection) }
  end

  it 'must be able to determine which player has won the round' do

  end

end

# REQUIREMENTS
# must be able to switch between a second player or computer - done
# must be able to take either a rock, paper or scissors selection from a player - done
# must be able to determine which player has won the round -