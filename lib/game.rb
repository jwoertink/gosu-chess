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
    if button_down?(Gosu::MsLeft)
      if piece_selected?
        current_piece.moving = true
        current_piece.update((mouse_x - 20), (mouse_y - 20))
      end
    end
  end

  def button_down(id)
    case id
    when Gosu::KbEscape
      close
    when Gosu::MsLeft
      square = board.find_square(mouse_x, mouse_y)
      if square.item
        @piece_selected = true
        @current_piece = square.item
      else
        @piece_selected = false
      end
    end
  end

  def button_up(id)
    case id
    when Gosu::MsLeft
      square = board.find_square(mouse_x, mouse_y)
      current_piece.moving = false
      if square.empty?
        puts "empty #{square.color}"
        square.item = current_piece
      else
        puts "CURRENT #{current_piece.name}"
        puts "SELECTED #{square.item.name}"
      end
    end
  end

  def piece_selected?
    !!@piece_selected
  end

  def current_piece
    @current_piece
  end

end
