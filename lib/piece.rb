class Piece
  attr_accessor :color, :spot, :image

  def initialize(color, column)
    @color = color
    @spot = {column: column}
    @image = Gosu::Image.new($window, "images/#{@color}_#{name}.png", false)
    set_initial_spot
  end

  def name
    self.class.name.downcase
  end
end
