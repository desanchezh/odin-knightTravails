class Square
  attr_accessor :coords, :moves

  def initialize(coords)
    @coords = coords
    @moves = {
    0 => nil,
    1 => nil,
    2 => nil,
    3 => nil,
    4 => nil,
    5 => nil,
    6 => nil,
    7 => nil}
  end

end
