require_relative '../lib/auto_player.rb'

describe Autoplayer do

let(:autoplayer){ Autoplayer.new }

  it 'should return rock, paper or scissors' do
    expect(autoplayer.selection).to satisfy{ |selection| [:rock, :paper, :scissors].include?(selection) } 
  end

end

# REQUIREMENTS
# should randomly generate rock, paper or scissors - done