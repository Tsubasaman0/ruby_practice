p Array.include?(Enumerable)
p Hash.include?(Enumerable)
p Range.include?(Enumerable)

p [1,2,3].map { |n| n * 10 }
p test = { a: 1, b: 2, c: 3}.map { |k, v| [k, v * 10] }
test_hash = { Apple: 'iPhone', Google: 'Android' }

p (1..3).map { |n| n * 10 }

p 2 <=> 1
p 2 <=> 2
p 1 <=> 2
p 1 <=> 'abc'