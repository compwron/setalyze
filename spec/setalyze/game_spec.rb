require_relative 'spec_helper'

describe Game do
  let(:g) { Game.new }

  describe 'summary' do 
    it 'prints empty summary for game with no progress' do
      expect(g.summary).to eq "0 turns played. 0 sets found by user."
    end

    it 'prints turns played summary when game is ended after one round' do
      g.play(Instruction::GameOver)
      expect(g.summary).to eq "1 turns played. 0 sets found by user."
    end
  end
end