a = [1, 2, 3]

puts a
a[5] = 50
puts a
a = []
a << 999
a << 888
a << 777

puts a

a.delete_at(1)
puts a

quo_rem = 14.divmod(3)
puts "商=#{quo_rem[0]}、余り=#{quo_rem[1]},"
quotient, reaminder = 14.divmod(3)
puts "商=#{quotient}、余り=#{reaminder},"

numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
    sum += n
end

puts sum

a = [1, 2, 3, 4, 5, 6, 7, 8]
sum = 0
a.delete_if do |n|
    sum_value = n.even? ? n * 10 : n
    sum += sum_value
end

puts sum

a = [1, 2, 3, 4, 5, 6, 7, 8]
sum = 0
a.each do |n|
    sum += n
end

p sum

a = [1, 2, 3, 4, 5, 6, 7, 8]
a.delete_if do |n|
    n.odd?
end

p a

a = [1, 2, 3, 4, 5, 6, 7, 8]
#do end は改行しなくてもいいが、改行したほうが見やすい。
#{}の中でも書ける。短い文のときはこちらのほうが良さそう。
sum = 0
a.each { |n|
    sum += n
}

puts sum
a = [1, 2, 3, 4, 5, 6, 7, 8]
#mapメソッドは空の配列を作る場合に書くのが楽になる

numbers = a.map { |n|
    n * 10
}

p numbers

a = [1, 2, 3, 4, 5, 6, 7, 8]

nums = a.map { |n|
    n * 10
}

p nums

a = [1, 2, 3, 4, 5, 6, 7, 8]

even_numbers = a.select { |n| n.even? }
odd_numbers = a.reject { |n| n.even? }
min_even_numbers = a.find { |n| n.even? }

p even_numbers
p odd_numbers
p min_even_numbers

#map(&:□□□)で簡潔に書ける

sum = a.map(&:even?)
p sum

p a[0..3].include?(2)



def liquid?(temperature)
    (0..100).include?(temperature)
end

puts liquid?(112)
#case文と(1..19)範囲オブジェクトは併用可
p (1..5).to_a
p ('bad'..'baz').to_a

#to_aは範囲オブジェクトを配列に入れる。
sum = 0
(1..10).each do |n|
    sum += n
end

puts sum