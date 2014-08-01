class Player
  attr_accessor :pieces

  def initialize(color)
    @color = color
    @pieces = []
    add_pieces
  end


  private

  def add_pieces
    @pieces << Pawn.new(@color, 0)
    @pieces << Pawn.new(@color, 1)
    @pieces << Pawn.new(@color, 2)
    @pieces << Pawn.new(@color, 3)
    @pieces << Pawn.new(@color, 4)
    @pieces << Pawn.new(@color, 5)
    @pieces << Pawn.new(@color, 6)
    @pieces << Pawn.new(@color, 7)
  end

end
