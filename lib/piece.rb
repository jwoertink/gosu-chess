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

  def draw
    @image.draw(@x, @y, 2)
  end

  def update(x, y)
    @x, @y = x, y
    draw
  end

  def empty?
    false
  end
end
