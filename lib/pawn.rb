class Pawn < Piece

  def set_initial_spot
    row = @color.eql?('white') ? 1 : 6
    col = @spot
    @x = ((col * @board.block[:height]) + @board.block[:width] / 2.0) - (@image.width / 2.0)
    @y = (row * @board.block[:height])
    @board.layout[row][col] = self
  end

  def draw
    @image.draw(@x, @y, 2)
  end

  def update

  end

end
