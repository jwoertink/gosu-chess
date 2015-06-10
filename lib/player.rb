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
    add_bishops
    add_knights
    add_royals
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

  def add_bishops
    @pieces << Bishop.new(@color, 2)
    @pieces << Bishop.new(@color, 5)
  end

  def add_knights
    @pieces << Knight.new(@color, 1)
    @pieces << Knight.new(@color, 6)
  end

  def add_royals
    @pieces << King.new(@color, 4)
    @pieces << Queen.new(@color, 3)
  end

end
