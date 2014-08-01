class Game < Gosu::Window
  attr_accessor :board

  def initialize
    super(600, 600, false)
    $window = self
    self.board = Board.new
    self.caption = 'Ruby Chess'

  end

  def draw
    self.board.draw
  end

  def update

  end

  def button_down(id)
    close if id.eql? Gosu::KbEscape
  end

end
