class Player

  def initialize(name)
    @name = name
    @selection = selection
    @score = 0
  end

  def name=(name)
    @name = (name)
  end

  def name
    @name
  end

  def selection
    @selection
  end

  def rock
    @selection = "rock"
  end

  def paper
    @selection = "paper"
  end

  def scissors
    @selection = "scissors"
  end

  def score
    @score
  end

  def winner
    @score += 1
  end

end