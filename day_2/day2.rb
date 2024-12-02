n_arr = []
File.foreach('day2.txt') do |line|
  n_arr << line.split.map(&:to_i)
end

def check(n_arr)
  levels = n_arr.each_cons(2).map { _2 - _1 }
  levels.all? { (1..3).include?(_1) } || levels.all? { (-3..-1).include?(_1) }
end

def check2(n_arr)
  true if check(n_arr)
  n_arr.size.times do |i|
    repl = n_arr.clone
    repl.delete_at i
    return true if check(repl)
  end
  false
end

puts n_arr.count { check _1 }
puts n_arr.count { check2 _1 }
