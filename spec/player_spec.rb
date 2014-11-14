require_relative '../lib/player.rb'

describe Player do

  let(:player){ Player.new("Chris") }
  let(:game){ double :game, win: false }
  let(:secondgame){ double :game, win: true }

  it 'can record record their name' do
    expect(player.name).to eq "Chris"    
  end

  it 'can change their name' do
    player.name = "Bob"
    expect(player.name).to eq "Bob"
  end

  it 'must select: rock, paper or scissors' do
    player.paper
    expect(player.selection).to eq "paper"
  end

  it 'wins must start at zero' do
    expect(game.win).to_be false
  end

end


# REQUIREMENTS
# player must enter a name - done
# player can change their name - done
# player must select either rock, paper or scissors - done
# player knows if they won or lost
# players wins are recorded/counted