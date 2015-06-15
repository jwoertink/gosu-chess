class Piece
  attr_accessor :color, :spot, :image, :moving

  def initialize(color, column)
    @color = color
    @moving = false
    @spot = {column: column}
    @image = Gosu::Image.new($window, "images/#{@color}_#{name}.png", false)
    set_initial_spot
  end

  def name
    self.class.name.downcase
  end

  def draw
    index = moving ? 3 : 2
    @image.draw(@x, @y, index)
  end

  def update(x, y)
    @x, @y = x, y
    draw
  end

  def empty?
    false
  end
end
