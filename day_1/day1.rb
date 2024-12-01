first = []
second = []

File.foreach('day1.txt') do |line|
  words = line.split
  first << words[0].to_i if words[0]
  second << words[1].to_i if words[1]
end

first.sort!
second.sort!

first.zip(second).map { |fir, sec| (fir - sec).abs }
