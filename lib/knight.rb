require_relative 'node'

class Knight
  attr_accessor :current, :target

  def initialize(start, target)
    @coordinates = Node.new(start)
    @target = target
  end

  possible_moves = {0 => [coordinates[0] + 2, coordinates[1] + 1],
    1 => [coordinates[0] + 1, coordinates[1] + 2],
    2 => [coordinates[0] - 1, coordinates[1] + 2],
    3 => [coordinates[0] - 2, coordinates[1] + 1],
    4 => [coordinates[0] - 2, coordinates[1] - 1],
    5 => [coordinates[0] - 1, coordinates[1] - 2],
    6 => [coordinates[0] + 1, coordinates[1] - 2],
    7 => [coordinates[0] + 2, coordinates[1] - 1]}

  def insert(coordinates = @coordinates, possible_move)
    return Node.new(possible move) if root.nil?
    return root if root.root == value

    if value < root.root
      root.left = insert(root.left, value)
    elsif value > root.root
      root.right = insert(root.right, value)
    end
    root
  end

  def is_valid_move?(coordinates)
    return false if coordinates[0] > 7 || coordinates[1] > 7
    return false if coordinates[0] < 0 || coordinates[1] < 0

    true
  end


knight = KnightMoves.new([0, 0], [5, 5])

# p knight.current.square
# p knight.current.possible_moves[1]



