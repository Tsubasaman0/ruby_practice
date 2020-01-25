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

a = [1, 2]
b = [3, 4]

a.concat(b)
p a #=> [1,2,3,4]破壊的メソッド

a = [1,2,3,4,]
b = [1,2,6,7,]
p a | b
p a & b

require 'set'

a = Set.new([1, 2, 3])
b = Set.new([4, 5, 3])
p a - b

a, *b = 1, 2, 3, 4
p b

# *マークが付くと米みたいに合体する。溶け込む

a = Array.new(5)
p a

a = Array.new() {
    'Array1'
}

p a

#同じ値で同一のオブジェクトなのか、同じ値で異なるオブジェクトなのか

names = ["Tsubasa", "Maho", 'Iwasawa']
names.map.with_index { |name, i| puts "#{i}: #{name}"}

puts names.delete_if.with_index { |name, i| puts name.include?('w')}

a = []
b = [2, 3]
a.push(*b)
p a

#pushのいいところは配列に同じ配列として挿入できること※を使って

a = [1, 2, 3]
p [1, 2, *a, 2, 3]
#米を使うと忍ばせられる

p %w(
    apple
    melon
    orange
)

# %記法という書き方がある。場合によっては見やすいのでこれで書く
a = ["a","23","55","76","19","34"]
p a[2,4].map!(&:to_i)
p a

fluits = %w(
    apple
    melon
    orange
)

puts fluits.map.with_index(1) { |fluit, n| "#{n}: #{fluit}"}

abc = a[1,5].map do |n|
    n.to_i
end
p abc

#引数が２つあれば、ブロック変数をふたつにすると入る
a2 = [[25,10],[15,10]]
a3 =[]
a2.each { |n1, n2| 
        a3 << n1 * n2
    }
p a3

a2.each.with_index(1) do |(width, height), i|
    puts "width: #{width}, height: #{height}, i: #{i}"
end

#ブロックローカル変数を使って不具合を防ぐ
#mapメソッドは返り値があるため、帰ってきた受け皿が必要（変数）

monsters = ["スライム", "スライムナイト", "ドラゴン"]

shutsugen = monsters.map do |monster|
    "#{monster}"
end.join("と")
puts [shutsugen, "があらわれた"]

#メソッドチェーン、あとで習う。続けて書く記法。
#do endより{}のほうが読みやすい。状況によって見やすい方を書く。
numbers = [1, 2, 3, 4, 5, 6]
loop do
    n = numbers.sample
    puts n
    break if n == 5
end

while true
    n = numbers.sample
    break if n == 5
end

daice = numbers.shuffle

daice.each { |n|
    puts daice
    break if n == 5
}

i =
while true
    break "うんこ"
end

fluits = %w(
    apple
    melon
    orange
)

numbers = [1,2,3]
fluits.each do |fluit|
    numbers.shuffle.each do |i|
        puts "#{i}: #{fluit}"
        break if i == 3
    end
end

puts "Hello,World"

#returnはメソッドからの脱出してしまうので、挙動が崩れる可能性が高くなるためあまり積極的には使わないようにする

i = 0
while i < numbers.size
    n = numbers[i]
    i += 1
    next if i.even?
    puts n
end

puts {}.class

money = {
    'japan' => 'yen',
    'us' => 'doller',
    'india' => 'rupee'
}
puts money["japan"]

money.each { |key, value|
    puts "#{key}: #{value}"
}

money.each { |key_value|
    key   = key_value[0]
    value = key_value[1]
    puts "#{key}: #{value} "
}

a = { "x" => 1, "y" => 2, "z" => 3}
b = { "y" => 2, "z" => 3, "x" => 10,}

puts a == b

:apple.methods
'apple'.methods

#シンボルは実は整数であって、文字列ではない
#破壊的メソッドが適用しない。整数扱いのため。

person = {
    name: 'Alice',
    age: 20,
    friends: ['Bob', 'Carol'],
    phones: { home: '1234-1234', mobile: '4444-4444' }
}

puts person[:age]
puts person[:friends][1]
puts person[:phones][:mobile]

def buy_burger( menu, drink: true , potato: true )
    if drink
    end
    if potato
    end 
end

puts buy_burger( 'cheese', true, true )