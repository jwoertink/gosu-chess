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
        current_piece.update(mouse_x, mouse_y)
      end
    end
  end

  def button_down(id)
    case id
    when Gosu::KbEscape
      close
    when Gosu::MsLeft
      square = board.find_square(mouse_x, mouse_y)
      if square.is_a? Piece
        @piece_selected = true
        @current_piece = square
      else
        @piece_selected = false
      end
    end
  end

  def button_up(id)
    case id
    when Gosu::MsLeft
      square = board.find_square(mouse_x, mouse_y)
      if square.empty?
        puts "droppable"
      else
        puts "#{current_piece.name}"
        puts "#{square.name}"
      end
    end
  end

  def piece_selected?
    @piece_selected
  end

  def current_piece
    @current_piece
  end

end
