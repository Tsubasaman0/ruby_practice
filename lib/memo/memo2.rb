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