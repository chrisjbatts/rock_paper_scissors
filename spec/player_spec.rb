require_relative '../lib/player.rb'

describe Player do

  let(:player){ Player.new("Chris") }
  let(:game){ double :game }

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
    expect(player.score).to eq(0)
  end

  it 'score must increase by 1 on winning previous game' do
    expect{player.winner}.to change{player.score}.by 1
  end

    it 'score must increase by 2' do
      player.winner
      player.winner
    expect(player.score).to eq(2)
  end

end

# REQUIREMENTS
# player must enter a name - done
# player can change their name - done
# player must select either rock, paper or scissors - done
# player knows when they have won - done