class Pawn < Piece

  def can_attack_piece?(piece)

  end

  def can_move_to_square?(square)

  end

  private

  def set_initial_spot
    @spot[:row] = @color.eql?('white') ? 1 : 6
    @x = ((@spot[:column] * Square::HEIGHT) + Square::WIDTH / 2.0) - (@image.width / 2.0)
    @y = (@spot[:row] * Square::HEIGHT) + 1.5
    $window.board.layout[@spot[:row]][@spot[:column]].item = self
  end

end
