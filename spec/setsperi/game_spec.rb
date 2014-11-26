require_relative 'spec_helper'

describe Game do
  let(:g) { Game.new }

  it 'starts with full deck minus spread' do
    expect(g.deck.cards.size).to eq(81 - 12)
    expect(g.spread.cards.size).to eq 12
  end

  it 'stops play when there are no more cards in the deck and no valid sets in the spread' do
    g.deck.cards = []
    g.spread.cards = []
    expect(g._continue_play).to eq false
  end

  it 'continues play when there are cards in the deck' do
    g.spread.cards = []
    expect(g._continue_play).to eq true
  end

  it 'continues play when there are valid sets in the spread' do
    g.deck.cards = []
    expect(g._continue_play).to eq true
  end

  it 'lets play continue when there are cards in the deck'

  it 'lets play continue when there are valid sets in the spread'
end