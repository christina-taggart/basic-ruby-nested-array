# Release 0
class Tic_Tac_Toe
  attr_accessor :board
  def initialize
    x_num = 4 + rand(2)
    o_num = 9 - x_num
    pieces = "#{'x ' * x_num}#{'o ' * o_num}".split(' ')
    @board = Array.new(3) { pieces.shuffle!.shift(3) }
  end
end

# Driver Code
my_ttt = Tic_Tac_Toe.new
my_ttt.board.each { |row| p row }

# Release 1
class DataTable
  attr_accessor :table
  def initialize
    @table = Array.new(5) { Array.new(3, " ") }
    @table[0] = ["Number", "Name", "Position", "Points per Game"]
    @table[1] = [ 12, "Joe Schmo", "Center", [14, 32, 7, 0, 23] ]
    @table[2] = [ 9, "Ms. Buckets", "Point Guard", [19, 0, 11, 22, 0] ]
    @table[3] = [ 31, "Harvey Kay", "Shooting Guard", [0, 30, 16, 0, 25]]
    @table[4] = [ 18, "Sally Talls", "Power Forward", [18, 29, 26, 31, 19]]
    @table[5] = [ 22, "MK DiBoux", "Small Forward", [11, 0, 23, 17, 0] ]
  end
end

def convert_roster_format(roster)
  roster_header = roster.slice!(0)
  roster = roster.transpose
  roster_array = []
  roster.each_with_index do |row, r_idx|
    roster[r_idx].each do |col|
      roster_array << Hash[roster_header[r_idx], col]
    end
  end
  final_hash = []
  roster.each_with_index do |row, idx|
    final_hash << roster_array[idx].merge(roster_array[idx+5]).merge(roster_array[idx+10]).merge(roster_array[idx+15])
  end
final_hash
end

roster = [["Number", "Name", "Position", "Points per Game"],
         ["12","Joe Schmo","Center",[14, 32, 7, 0, 23] ],
         ["9", "Ms. Buckets ", "Point Guard", [19, 0, 11, 22, 0] ],
         ["31", "Harvey Kay", "Shooting Guard", [0, 30, 16, 0, 25] ],
         ["7", "Sally Talls", "Power Forward ", [18, 29, 26, 31, 19] ],
         ["22", "MK DiBoux ", "Small Forward ", [11, 0, 23, 17, 0] ]]

hashed_roster = convert_roster_format(roster)
p hashed_roster
puts hashed_roster[0]["Name"]
p hashed_roster[2]
