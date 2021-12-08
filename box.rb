class Box

  attr_reader :shut_tiles, :number_of_tiles

  def initialize(tiles = [])
    @tiles = tiles
    @shut_tiles = []
  end

  def shut?
    @tiles.empty? && @shut_tiles.length == number_of_tiles
  end

  def can_flip_for?(value)
    false
  end

  def tiles 
    @tiles
  end

  def to_s
    "Box"
  end

end

