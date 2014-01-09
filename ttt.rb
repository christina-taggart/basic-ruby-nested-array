def tictactoe
letters = ["x","x","x","o","o","o"]
  tto = Array.new(3) {
   letters.sample(3)

  }

  tto.each do |x|
    p x
  end
end

tictactoe