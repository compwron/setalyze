class Game
  MAX_TURNS = 100

  def initialize
    @turns = 0
    @keep_going = true
    @valid_user_sets = 0
    @deck = Deck.new # does this need to be here, or can it just be accessed through Spread?
    @spread = Spread.new(@deck)
  end

  def continue?
    return false unless @turns < MAX_TURNS
    return false unless @keep_going
    true
  end

  def play(input)
    @turns += 1
    return if _game_over? input
    vus = _valid_user_set? input
    if vus
      @valid_user_sets += 1
      @spread = @spread.update(input)
    end
    _user_response vus
  end

  def _user_response valid_user_set
    (valid_user_set ? "Valid set!" : "Invalid set") + "\nNew board:\n\n#{game_board}"
  end

  def summary
    game_status = continue? ? 'in progress' : 'over'
    "Game #{game_status}. #{@turns} turns played. #{@valid_user_sets} sets found by user."
  end

  def game_board
    @spread.to_out
  end

  def _game_over?(input)
    over = input.downcase.strip == Instruction::GameOver
    @keep_going = false if over
    over
  end

  def _valid_user_set?(input)
    CardSet.new(input).valid?
  end
end
