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
    @cursor.draw(mouse_x, mouse_y, 10)
  end

  def update
    if piece_selected?

    end
  end

  def button_down(id)
    case id
    when Gosu::KbEscape
      close
    when Gosu::MsLeft
      puts "clicking on #{mouse_x}, #{mouse_y}"
      square = board.find_square(mouse_x, mouse_y)
      binding.pry
    end
  end

  def piece_selected?
    false
  end

  def current_piece
    #code
  end

end
