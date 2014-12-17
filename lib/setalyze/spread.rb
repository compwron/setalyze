  class Spread
    def initialize(deck)
      @deck = deck
      @cards = deck.sample 12
      deck.remove @cards
    end

    def update(_valid_user_input)
      return self
    end

    def to_out
      (1..3).map { |_n| @cards.slice!(0..3).map {|c| c.input_style}.join(' ') }.join("\n")
    end
  end
