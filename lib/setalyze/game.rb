class Game
  MAX_TURNS = 100

  def initialize
  	@turns = 0
    @keep_going = true
    @valid_user_sets = 0
  end

  def continue?
    return false unless @turns < MAX_TURNS
    return false unless @keep_going
    true
  end

  def play input
  	@turns += 1
    return if _game_over? input
    @valid_user_sets += 1 if _valid_user_set? input
  end

  def summary
    game_status = continue? ? "in progress" : "over"
  	"Game #{game_status}. #{@turns} turns played. #{@valid_user_sets} sets found by user."
  end

  def _game_over? input
    over = input.downcase.strip == Instruction::GameOver
    @keep_going = false if over
    return over
  end

  def _valid_user_set? input
    true
  end
end
