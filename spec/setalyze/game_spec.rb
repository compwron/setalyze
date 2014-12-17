require_relative 'spec_helper'

describe Game do
  let(:g) { Game.new }

  describe 'game_board' do
    it 'should start with 12 real cards' do
      gb = g.game_board # does this come from .play?
      cards_on_board = gb.split("\n").map { |line| line.split(' ') }.flatten
      expect(cards_on_board.size).to eq 12
      cards_on_board.map do|c|
        expect(Card.resurrect(c)).to_not be_nil
      end
    end
  end

  it 'has a spread with cards' do
  end

  describe 'play' do
    it 'should end game with 1 turn and no wins when user says done' do
      g.play Instruction::GameOver
      expect(g.summary).to eq 'Game over. 1 turns played. 0 sets found by user.'
      expect(g.continue?).to eq false
    end

    it 'should be willing to continue play if user does not say done' do
      g.play Instruction::ValidSet
      expect(g.summary).to eq 'Game in progress. 1 turns played. 1 sets found by user.'
      expect(g.continue?).to eq true
    end

    it 'does not increment user found sets for invalid set' do
      g.play Instruction::InvalidSet
      expect(g.summary).to eq 'Game in progress. 1 turns played. 0 sets found by user.'
      expect(g.continue?).to eq true
    end

    it 'tells user about invalid set' do
      out = g.play Instruction::InvalidSet
      expect(out).to include 'Invalid set'
    end

    it 'tells user about valid set' do
      out = g.play Instruction::ValidSet
      expect(out).to include 'Valid set'
    end

    it 'shows user changed spread after accepting set' do
      first_board = g.game_board
      g.play Instruction::ValidSet
      second_board = g.game_board
      expect(first_board).to_not eq second_board
    end
  end

  describe 'continue?' do
    it 'stops when over max turns' do
      (0..100).each { |_i| g.play Instruction::InvalidSet }
      expect(g.continue?).to eq false
    end

    it 'continues when there are cards to play' do
      expect(g.continue?).to eq true
    end

    it 'stops when there are no valid sets in spread and no cards in deck'
  end

  describe 'summary' do
    it 'prints empty summary for game with no progress' do
      expect(g.summary).to eq 'Game in progress. 0 turns played. 0 sets found by user.'
    end

    it 'prints turns played summary when game is ended after one round' do
      g.play(Instruction::GameOver)
      expect(g.summary).to eq 'Game over. 1 turns played. 0 sets found by user.'
    end
  end
end
