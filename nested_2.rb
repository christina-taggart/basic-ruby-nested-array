def tic_tac_toe
  exes_and_ohs = ["X","O","X","O"]
  board = Array.new(3) { exes_and_ohs.sample(3) }
end

p tic_tac_toe