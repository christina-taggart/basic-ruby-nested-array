class Tic_Tac_Toe
  attr_accessor :board
  def initialize
    x_num = 4 + rand(2)
    o_num = 9 - x_num
    pieces = "#{'x ' * x_num}#{'o ' * o_num}".split(' ')
    @board = Array.new(3) { pieces.shuffle!.shift(3) }
  end
end

my_ttt = Tic_Tac_Toe.new
my_ttt.board.each { |row| p row }