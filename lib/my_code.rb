# Your Code Here
def map(array)
  new = []
  i = 0
  while i < array.length do
    new.push(yield(array[i]))
    i += 1
  end
  return new
end

def reduce(array, starting_point=0)
  array.length.times do |i|
    starting_point = yield(starting_point, array[i])
  end
  starting_point
end
