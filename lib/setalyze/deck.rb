class Deck
  require_relative 'card'
  attr_accessor :cards # for testing. find a better way

  def initialize
    @cards = _cards
    @used_cards = []
  end

  def sample num
    @cards.sample num
  end

  def remove cards
    used cards
  end

  def self.starting_size
    81
  end

  def used(cards)
    @used_cards << cards
    _remove_from_available_cards cards
 end

  def _remove_from_available_cards(cards)
    @cards = @cards - cards
  end

  def draw_cards(num)
    cards = @cards.sample num
    _remove_from_available_cards cards
    @used_cards << cards
    cards
  end

  def _cards
    Card::Number.map do|n|
      Card::Symbol.constants.map do|sy|
        Card::Shading.constants.map do|sh|
          Card::Color.constants.map do|c|
            Card.new(n, sy, sh, c)
          end
        end
      end
    end.flatten
  end
end
