def create_board
plays = ["x", "x", "x", "x", "x", "o", "o", "o", "o"]
board = [[plays.sample(3)],[plays.sample(3)],[plays.sample(3)]]

end

def create_boards(num)
  num.times do |x|
    p create_board
  end
end

create_boards(10)
#Release 1

def convert_roster_format(roster)
table = [["Number", "Name", "Position", "Points per Game"],
              [12, "Joe Schmo", "Center", [14,32,7,0,23]],
              [9, "Ms. Buckets", "Point Guard", [19,0,11,22,0]],
              [31, "Harvey Kay", "Shooting Guard", [0, 30, 16, 0, 25]],
              [18, "Sally Talls", "Power Forward", [18, 29, 26, 31, 19]],
              [22, "MK DiBoux", "Small Forward", [11, 0, 23, 17, 0]]]
end