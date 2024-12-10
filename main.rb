require_relative 'lib/knight_moves'



  def knight_moves (square, target, counter = -1)
    knight = KnightMoves.new(square)
    knight.target = target

    return if !knight.is_valid_move?
    return p knight.square if knight.square == target

    counter += 1
    p counter
    p knight.square
    knight_moves(knight.possible_moves[counter], target, counter)

  end

  knight_moves([0,0], [5, 5])