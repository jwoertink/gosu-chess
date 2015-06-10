class King < Piece

  def set_initial_spot
    row = @color.eql?('white') ? 0 : 7
    col = @spot
    @x = ((col * @board.block[:height]) + @board.block[:width] / 2.0) - (@image.width / 2.0)
    @y = row * @board.block[:height] + 1.5
    @board.layout[row][col] = self
  end

  def draw
    @image.draw(@x, @y, 2)
  end

  def update
    # doing some update
  end

end
