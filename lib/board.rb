class Board
  WHITE = 0xFFE6E6E6.freeze
  BLACK = 0xFF1C1C1C.freeze
  attr_accessor :layout, :squares

  def initialize
    @layout = Array.new(8) { Array.new(8) { Square.new } }
    @squares = []
    $window.board = self
    setup
  end

  def draw
    @squares.map(&:draw)
    @black.pieces.map(&:draw)
    @white.pieces.map(&:draw)
  end

  def update

  end

  # Find the square inside of the bounding box
  # Returns a Square
  def find_square(x, y)
    square = @squares.find { |sq| sq.in_bounding_box?(x, y) }
    square
  end

  private

  def setup
    @black = Player.new('black')
    @white = Player.new('white')

    initialize_squares
  end

  def initialize_squares
    @layout.each_with_index do |row, row_number|
      row.each_with_index do |col_square, col_number|
        method = row_number.even? ? :even? : :odd?
        col_square.color = col_number.send(method) ? WHITE : BLACK
        col_square.spot = "#{row_number}:#{col_number}"
        col_square.point_tl = {x: col_number * Square::WIDTH, y: row_number * Square::WIDTH}
        col_square.point_tr = {x: col_number * Square::WIDTH + Square::WIDTH, y: row_number * Square::WIDTH}
        col_square.point_bl = {x: col_number * Square::WIDTH, y: row_number * Square::HEIGHT + Square::HEIGHT}
        col_square.point_br = {x: col_number * Square::HEIGHT + Square::HEIGHT, y: row_number * Square::WIDTH + Square::WIDTH}
        @squares << col_square
      end
    end
  end

end
