  require 'pry'
  class CardSet
    def initialize(cards_input)
      @valid = _valid?(_cards(cards_input))
    end

    def _cards(cards_input)
      cards_input.split(' ').map do|ci|
        Card.resurrect(ci)
      end
    end

    def _valid?(cards)
      return false unless cards.size == 3
      # return false if cards[0] == cards[1] || cards[1] == cards[2] # hack instead of .inject(&:==)
      [:number, :symbol, :shading, :color].each do |attribute|
        return false if cards.map(&attribute).uniq.size == 2
      end
      true
    end

    def valid?
      @valid
    end
  end
