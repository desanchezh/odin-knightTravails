class Node
  attr_accessor :coordinates, :possible_moves

  def initialize(coordinates)
    @coordinates = coordinates
    @move0 = nil
    @move1 = nil
    @move2 = nil
    @move3 = nil
    @move4 = nil
    @move5 = nil
    @move6 = nil
    @move7 = nil
    @move8 = nil
  end

end

    {0 => [coordinates[0] + 2, coordinates[1] + 1],
    1 => [coordinates[0] + 1, coordinates[1] + 2],
    2 => [coordinates[0] - 1, coordinates[1] + 2],
    3 => [coordinates[0] - 2, coordinates[1] + 1],
    4 => [coordinates[0] - 2, coordinates[1] - 1],
    5 => [coordinates[0] - 1, coordinates[1] - 2],
    6 => [coordinates[0] + 1, coordinates[1] - 2],
    7 => [coordinates[0] + 2, coordinates[1] - 1]}