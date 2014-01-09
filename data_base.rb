letters = ['a','b','c']
numbers = [1,2,3]
def fold(x,y)
  a = []
  z = x + y
  first_count = 0
  second_count = (z.length / 2)

  limit = z.length/2
  1.upto(limit) {
  a << [z[first_count],z[second_count]]
  first_count += 1
  second_count += 1
}


p a
end

fold(letters,numbers)

#[[z[0],z[3]], [z[1],z[4]], [z[2],z[5]]]