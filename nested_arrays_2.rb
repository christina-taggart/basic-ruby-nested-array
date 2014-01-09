def random_board
  input = Array.new(4,"X") + Array.new(4, "O")
  random_board = input.shuffle! + [input.sample]
  random_board.each_slice(3).to_a
end

def tictac
  sample_board = []
  10.times do
    sample_board << random_board if !sample_board.include?(random_board)
  end
  sample_board
end
p tictac