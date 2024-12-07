class Vertex
  attr_accessor :root, :left, :right, :up, :down

  def initialize(root)
    @root = root
    @moves = {1 => nil, 2 => nil, 3 => nil, 4 => nil,5 => nil, 6 => nil, 7 => nil, 8 => nil}
  end
end