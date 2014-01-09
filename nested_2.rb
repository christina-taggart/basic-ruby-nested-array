# def tic_tac_toe
#   exes_and_ohs = ["X","O","X","O"]
#   board = Array.new(3) { exes_and_ohs.sample(3) }
# end

# p tic_tac_toe

roster = [["Number", "Name", "Position", "Points per Game"],
         ["12","Joe Schmo","Center",[14, 32, 7, 0, 23] ],
         ["9", "Ms. Buckets ", "Point Guard", [19, 0, 11, 22, 0] ],
         ["31", "Harvey Kay", "Shooting Guard", [0, 30, 16, 0, 25] ],
         ["7", "Sally Talls", "Power Forward ", [18, 29, 26, 31, 19] ],
         ["22", "MK DiBoux ", "Small Forward ", [11, 0, 23, 17, 0] ]]

#p Hash[roster[1][0],roster[1][1..-1]]

# => { "Number" => 31, "Name" => "Harvey Kay",
# "Position" => "Shooting Guard", "Points per Game" => [0, 30, 16, 0, 25] }


roster[0].each_with_index do |stat_name, index|
  p Hash[roster[0][index],roster[1][0]]
end

# roster.each do

