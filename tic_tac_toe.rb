
def generate_t3_board
  board = []
  qty_x = 0
  qty_o = 0
  3.times do
    row = []
    3.times do
      new_symbol = generate_random_char(qty_x,qty_o)
      if new_symbol == "x"
        qty_x += 1
      elsif new_symbol == "o"
        qty_o += 1
      end
      row << new_symbol
    end
    board << row
  end
  board
end

def generate_random_char(qty_x,qty_o)
  rand = Random.new

  if qty_x == 5
    "o"
  elsif qty_o == 5
    "x"
  else
    if rand.rand(2) == 0
      "o"
    else
      "x"
    end
  end
end


#driver code
many_boards = []

10.times { many_boards << generate_t3_board }

many_boards.each do |board|
  p "New Board"
  board.each { |row| p row }

  p board.flatten.count("o") <= 5
  p board.flatten.count("x") <= 5

end