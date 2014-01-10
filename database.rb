
def fold(x,y)
  a = []
  z = x + y
   first_count = 0
   second_count = (z.length / 2)

  limit = z.length/2
  1.upto(limit) {
    a << [z[first_count],z[second_count]]
    a
    first_count += 1
    second_count += 1
  }
  a
end

roster = [["Number", "Name", "Position", "Points per Game"],
         ["12","Joe Schmo","Center",[14, 32, 7, 0, 23] ],
         ["9", "Ms. Buckets ", "Point Guard", [19, 0, 11, 22, 0] ],
         ["31", "Harvey Kay", "Shooting Guard", [0, 30, 16, 0, 25] ],
         ["7", "Sally Talls", "Power Forward ", [18, 29, 26, 31, 19] ],
         ["22", "MK DiBoux ", "Small Forward ", [11, 0, 23, 17, 0] ]]

  def to_use(array)
    testing = array.shift
   answer =  array.map do |x|
      fold(testing, x)
    end
  final_answer = answer.map do |x|
    Hash[x]
    end
 final_answer
end

 check = to_use(roster)
 p check[0]["Name"] == "Joe Schmo"