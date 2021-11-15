class Monty
  attr_accessor :doors

  # assume the user always switch doors
  def initialize

    # setup the game
    @doors = [:car, :goat, :goat]

    # user picks a door (doesn't matter which)
    pick_a_door

    # monty reveals a goat
    reveal_a_goat

    # user picks different remaining door
    switch_doors
  end

  private

  def pick_a_door

  end

  def reveal_a_goat

  end

  def switch_doors

  end
end
