# This method takes an array of elements (these might be strings, integers, floats, or a
# combination of the above), and returns an array of the elements that appear once and only
# once.
def find_unique_elements(arr)   
    counts = {}
arr.each do |num|
  count = arr.find_all { |x| x == num }.size
  counts[num] = count if count <= 1
end

elements = arr.find_all { |x| counts.has_key?(x) }
p elements
end