class Board
  WHITE = 0xFFFFFFFF.freeze
  BLACK = 0xFF000000.freeze
  BLOCK = {width: 75, height: 75}
  attr_accessor :layout

  def initialize
    @layout = Array.new(8, Array.new(8, ''))
    setup
  end

  def draw
    @layout.each_with_index do |row, row_number|
      row.each_with_index do |col, col_number|
        method = row_number.even? ? :even? : :odd?
        color = col_number.send(method) ? WHITE : BLACK
        $window.draw_quad(
          col_number * BLOCK[:width], row_number * BLOCK[:width], color,
          col_number * BLOCK[:width] + BLOCK[:width], row_number * BLOCK[:width], color,
          col_number * BLOCK[:width], row_number * BLOCK[:height] + BLOCK[:height], color,
          col_number * BLOCK[:height] + BLOCK[:height], row_number * BLOCK[:width] + BLOCK[:width], color,
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
