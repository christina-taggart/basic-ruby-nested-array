#-----RELEASE 0-----

xo_generator = ["X", "X", "X", "X", "X", "O", "O", "O", "O", "O"].sample(9)
board = Array.new(3) { xo_generator.shift(3) }

#-----RELEASE 1-----

data_table =[["Number",   "Name",        "Position",       "Points per Game"],
             [ 12,        "Joe Schmo",   "Center",         [14, 32, 7, 0, 23]],
             [ 9,         "Ms. Buckets", "Point Guard",    [19, 0, 11, 22, 0]],
             [ 31,        "Harvey Kay",  "Shooting Guard", [0, 30, 16, 0, 25]],
             [ 18,        "Sally Talls", "Power Forward",  [18, 29, 26, 31, 19]],
             [ 22,        "MK DiBoux",   "Small Forward",  [11, 0, 23, 17, 0]]
            ]

roster = Hash.new
i = 0
while i <= 4
  roster[i] = nil
  i += 1
end

#-----SHITTIER VERSION-----

# o_win = ["X", "X", "X", "X", "O", "O", "O", "O", "O"].shuffle!
# x_win = ["X", "X", "X", "X", "X", "O", "O", "O", "O"].shuffle!
# a = rand(2)
# board = Array.new(3) {
#   if a == 1
#     o_win.shift(3)
#   else
#     x_win.shift(3)
#   end
#  }

#-----DRIVERS-----
p board
p roster
