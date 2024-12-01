first = []
second = []
sum = []

File.foreach('day1_2.txt') do |line|
  words = line.split
  first << words[0].to_i if words[0]
  second << words[1].to_i if words[1]
end

first.uniq!
first.each do |val|
  sum << [val, second.count(val)]
end

sum.map { |val1, val2| val1 * val2 }.sum
