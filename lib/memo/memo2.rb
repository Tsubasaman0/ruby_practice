fluits = %w(
    orange
    melon
    apple
)

numbers = [1, 2, 3]

fluits.each do |fluit|
    numbers.each do |n|
        next if n.even?
        puts "#{fluit},#{n}"
    end
end


def buy_burger(menu, drink: true, potato: true, **otehers)
    puts otehers
end

puts buy_burger('fish', drink: true, potato: true, sarad: true)
