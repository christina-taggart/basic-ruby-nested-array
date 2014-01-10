
def fold_arrays(potential_keys, potential_values)
  interspersed_data = []
  combined_keys_and_hashes = potential_keys + potential_values
  count = 0


  limit = combined_keys_and_hashes.length/2
  1.upto(limit) {
    interspersed_data << [combined_keys_and_hashes[count],combined_keys_and_hashes[count + combined_keys_and_hashes.length/2]]
    count  += 1
  }
  interspersed_data
end

roster = [["Number", "Name", "Position", "Points per Game"],
         ["12","Joe Schmo","Center",[14, 32, 7, 0, 23] ],
         ["9", "Ms. Buckets ", "Point Guard", [19, 0, 11, 22, 0] ],
         ["31", "Harvey Kay", "Shooting Guard", [0, 30, 16, 0, 25] ],
         ["7", "Sally Talls", "Power Forward ", [18, 29, 26, 31, 19] ],
         ["22", "MK DiBoux ", "Small Forward ", [11, 0, 23, 17, 0] ]]

  def to_use(array)
    titles = array.shift
   answer =  array.map do |data|
      Hash[(fold_arrays(titles, data))]
    end
  end

 check = to_use(roster)
 p check[0]["Name"] == "Joe Schmo"
 p check[3]["Position"] == "Power Forward "

