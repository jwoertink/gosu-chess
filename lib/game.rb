class Game < Gosu::Window
  attr_accessor :board

  def initialize(width, height, full_screen)
    super(width, height, full_screen)
    $window = self
    @board = Board.new
    self.caption = 'Ruby Chess'
    @cursor = Gosu::Image.new(self, 'images/cursor.png')
  end

  def draw
    @board.draw
    @cursor.draw(self.mouse_x, self.mouse_y, 10)
  end

  def update

  end

  def button_down(id)
    close if id.eql? Gosu::KbEscape
  end

end
