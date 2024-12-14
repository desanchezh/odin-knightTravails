require_relative 'square'

class Knight
  attr_accessor :coords, :target, :visited

  def initialize
    @coords = nil
    @target = nil
    @visited = []
  end

  def get_moves(square)
    all_moves = [[square[0] + 2, square[1] + 1],
    [square[0] + 1, square[1] + 2],
    [square[0] - 1, square[1] + 2],
    [square[0] - 2, square[1] + 1],
    [square[0] - 2, square[1] - 1],
    [square[0] - 1, square[1] - 2],
    [square[0] + 1, square[1] - 2],
    [square[0] + 2, square[1] - 1]]
    all_moves
  end

  def is_valid_move?(coords)
    return true if coords[0].between?(0, 7) && coords[1].between?(0, 7) && !@visited.include?(coords)
    false
  end

  def build_adjacency_list(square)
    moves = get_moves(square)
    possible_moves = []
    moves.each do |move|
      possible_moves << move if is_valid_move?(move)
    end
    possible_moves
  end

  def knight_moves(start, target)
    queue = []
    queue << target

    until queue.empty?
      current = queue.shift
      p current
      @visited << current
      build_adjacency_list(current).each {|next_move| queue << next_move if !queue.include?(next_move)}

    end
  end

end

knight = Knight.new

p knight.knight_moves([0, 0], [3, 3])
p knight.visited.size


