class Player
  attr_accessor :pieces

  def initialize(color)
    @color = color
    @pieces = []
    add_pieces
  end

  private

  def add_pieces
    add_pawns
    add_rooks
  end

  def add_pawns
    0.upto(7) do |i|
      @pieces << Pawn.new(@color, i)
    end
  end

  def add_rooks
    @pieces << Rook.new(@color, 0)
    @pieces << Rook.new(@color, 7)
  end

end
