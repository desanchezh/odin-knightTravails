require_relative 'square'

class Knight
  attr_accessor :visited

  def initialize
    @visited = []
  end

  def make_graph(start, target)
    queue = [Square.new(start)]
    current = queue.shift

    until current.coords == target
      current.next_moves.each do |move|
        current.children << new_square = Square.new(move, current)
        queue << new_square
      end
      current = queue.shift
    end
    current
  end

  def get_history(current, history, start)
    until current.coords == start
      history << current.coords
      current = current.parent
    end
    history << current.coords
  end

  def knight_moves(start, target)
    current = make_graph(start, target)
    history = []
    get_history(current, history, start)

    puts "Knight took #{history.size - 1} moves to go from #{start} to #{target}!"
    puts "Here's the path:"
    history.reverse.each {|coords| puts coords.to_s}

  end
end

knight = Knight.new

knight.knight_moves([3,3],[4,3])
knight.knight_moves([0,0],[6,5])


