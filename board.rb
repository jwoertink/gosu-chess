class Board
  WHITE = 0xFFE6E6E6.freeze
  BLACK = 0xFF1C1C1C.freeze
  attr_accessor :layout, :block

  def initialize
    @layout = Array.new(8, Array.new(8, ''))
    @block = {
      width: $window.width / 8,
      height: $window.height / 8
    }
    $window.board = self
    setup
  end

  def draw
    @layout.each_with_index do |row, row_number|
      row.each_with_index do |col, col_number|
        method = row_number.even? ? :even? : :odd?
        color = col_number.send(method) ? WHITE : BLACK
        $window.draw_quad(
          col_number * @block[:width], row_number * @block[:width], color,
          col_number * @block[:width] + @block[:width], row_number * @block[:width], color,
          col_number * @block[:width], row_number * @block[:height] + @block[:height], color,
          col_number * @block[:height] + @block[:height], row_number * @block[:width] + @block[:width], color,
        0)
      end
    end
    @black.pieces.map(&:draw)
    @white.pieces.map(&:draw)
  end

  def update

  end

  private

  def setup
    @black = Player.new('black')
    @white = Player.new('white')
  end

end
