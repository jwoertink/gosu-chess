class King < Piece

  def draw
    @image.draw(@x, @y, 2)
  end

  def update
    # doing some update
  end

  private

  def set_initial_spot
    @spot[:row] = @color.eql?('white') ? 0 : 7
    @x = ((@spot[:column] * $window.board.block[:height]) + $window.board.block[:width] / 2.0) - (@image.width / 2.0)
    @y = (@spot[:row] * $window.board.block[:height]) + 1.5
    $window.board.layout[@spot[:row]][@spot[:column]] = self
  end

end
