class Piece
  attr_accessor :color, :spot

  def initialize(color, spot)
    @board = $window.board
    @color = color
    @spot = spot
    @image = Gosu::Image.new($window, "images/#{@color}_#{name}.png", false)
    set_initial_spot
  end

  def name
    self.class.name.downcase
  end
end
