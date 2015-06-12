class Square
  attr_accessor :spot, :color, :item
  attr_writer :point_tl, :point_tr, :point_bl, :point_br

  WIDTH = 100 #$window.width / 8
  HEIGHT = 100 #$window.height / 8

  def initialize
    @item = nil
  end

  # points are hashes with x,y values
  def bounding_box
    [
      @point_tl,
      @point_tr,
      @point_bl,
      @point_br
    ]
  end

  def empty?
    @item.nil?
  end

  def draw
    $window.draw_quad(
      @point_tl[:x], @point_tl[:y], color,
      @point_tr[:x], @point_tr[:y], color,
      @point_bl[:x], @point_bl[:y], color,
      @point_br[:x], @point_br[:y], color,
    0)
  end

end
