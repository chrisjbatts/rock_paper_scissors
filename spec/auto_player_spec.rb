require_relative '../lib/auto_player.rb'

describe Autoplayer do

let(:autoplayer){ Autoplayer.new }

  it 'should return rock, paper or scissors' do
    expect(autoplayer.opponent_move).to satisfy{ |choice| [:rock, :paper, :scissors].include?(choice) } 
  end

end

# REQUIREMENTS
# should randomly generate rock, paper or scissors - done