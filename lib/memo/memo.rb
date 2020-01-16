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