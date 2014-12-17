require_relative 'spec_helper'

describe Spread do
	subject {Spread.new Deck.new}

  describe 'to_out' do
    it 'should start with 12 real cards' do
      cards_on_board = subject.to_out.split("\n").map { |line| line.split(' ') }.flatten
      expect(cards_on_board.size).to eq 12
      cards_on_board.map do|c|
        expect(Card.resurrect(c)).to_not be_nil
      end
    end
  end
end
