class Game
  def initialize
  	@turns = 0
  end

  def continue?
  end

  def play input
  	@turns += 1
  end

  def summary
  	"#{@turns} turns played. 0 sets found by user."
  end
end
