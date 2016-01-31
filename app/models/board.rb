
class Board
  attr_reader :board_arr

  def initialize( board_arr = nil )
      @board_arr = board_arr || Board.blank_board
  end

  def self.blank_board
    Array.new( 3 ) { Array.new( 3 ) }
  end

end

