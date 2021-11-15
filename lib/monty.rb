class Monty
  attr_accessor :doors, :result

  # assume the user always switch doors
  def initialize
    # setup the game
    @doors = %i[car goat goat].shuffle

    # user picks a door
    @pick1 = pick_a_door

    # monty reveals a goat
    @goat1 = reveal_a_goat

    # user switches doors
    @pick2 = pick_remaining_door

    @result = (@doors[@pick2] == :car)
  end

  private

  # return the position of the user's first pick
  def pick_a_door
    rand(0..2)
  end

  # return the position of one goat
  def reveal_a_goat
    remaining_doors = [0, 1, 2]
    remaining_doors.delete_at(@pick1)
    remaining_doors.delete_at(@doors.index(:car))
    remaining_doors.first
  end

  # return the position of the remaining door
  # FIXME: DRY this up... note the design flaw..
  def pick_remaining_door
    remaining_doors = [0, 1, 2]
    remaining_doors.delete_at(@pick1)
    remaining_doors.delete_at(@goat1)
    remaining_doors.first
  end
end
