dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# for each |item| in array
# check if string include the item
=begin
def substrings(string, array)
  array.select do |item|
    string.include?(item)
  end
end
=end

# for each |item| in string
# first split the string into arrays, then compare the item in string each
# for each |item| in array
=begin
def substrings(string, array)
  array.reduce(Hash.new(0)) do |counter, item|
    if string.include?(item)
      counter[item] += 1
    end
    counter
  end
end
=end

def substrings(string, array)
  splitted_array = string.split(' ')
  array.reduce(Hash.new(0)) do |counter, item|
    splitted_array.select do |word|
      word.include?(item)
    end.map do |item|
      counter[item] += 1
    end
    counter
  end
end

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)