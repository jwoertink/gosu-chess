class Board
  WHITE = 0xFFE6E6E6.freeze
  BLACK = 0xFF1C1C1C.freeze
  attr_accessor :layout, :block

  def initialize
    @layout = Array.new(8) { Array.new(8, '') }
    @block = {
      width: $window.width / 8,
      height: $window.height / 8
    }
    @squares = {}
    $window.board = self
    setup
  end

  def draw
    @layout.each_with_index do |row, row_number|
      row.each_with_index do |col, col_number|
        method = row_number.even? ? :even? : :odd?
        color = col_number.send(method) ? WHITE : BLACK
        block = @squares["#{row_number}:#{col_number}"]
        block = {
          x1: col_number * @block[:width],
          y1: row_number * @block[:width],
          x2: col_number * @block[:width] + @block[:width],
          y2: row_number * @block[:width],
          x3: col_number * @block[:width],
          y3: row_number * @block[:height] + @block[:height],
          x4: col_number * @block[:height] + @block[:height],
          y4: row_number * @block[:width] + @block[:width]
        }

        $window.draw_quad(
          block[:x1], block[:y1], color,
          block[:x2], block[:y2], color,
          block[:x3], block[:y3], color,
          block[:x4], block[:y4], color,
        0)
      end
    end
    @black.pieces.map(&:draw)
    @white.pieces.map(&:draw)
  end

  def update

  end

  def find_square(x, y)
    
  end

  private

  def setup
    @black = Player.new('black')
    @white = Player.new('white')
  end

end
