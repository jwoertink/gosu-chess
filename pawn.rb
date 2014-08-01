class Pawn
  attr_accessor :color, :spot

  def initialize(color, spot)
    #@board = $window.board.layout
    @color = color
    @spot = spot
    @image = Gosu::Image.new($window, "images/#{@color}_pawn.png", false)
    set_initial_spot
  end

  def set_initial_spot
    row = @color.eql?('white') ? 1 : 6
    col = @spot
    #@board[row][col] = self
    @x = (col * 75) + 26
    @y = row * 76.5
  end

  def draw
    @image.draw(@x, @y, 2)
  end

  def update

  end

end
