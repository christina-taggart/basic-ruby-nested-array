o_win = ["X", "X", "X", "X", "O", "O", "O", "O", "O"].shuffle!
x_win = ["X", "X", "X", "X", "X", "O", "O", "O", "O"].shuffle!
a = rand(2)
board = Array.new(3) {
  if a == 1
    o_win.shift(3)
  else
    x_win.shift(3)
  end
 }
# p xo_generator
p board