def get_randem_x_or_o
  return ["x", "o"][rand(2)]
end

def print_tic_tac_toe_board
  board = []
  3.times do |num|
    board[num] = []
    3.times { board[num] << get_randem_x_or_o }
  end
  board.each {|row| p row }
end

print_tic_tac_toe_board