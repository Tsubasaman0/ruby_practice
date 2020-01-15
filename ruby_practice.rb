def fizz_buzz(n)
    if n % 15 == 0
        'FizzBuzz'
    elsif n % 5 == 0 
        'Buzz'
    elsif n % 3 == 0 
        'Fizz'
    else
        n.to_s
    end
end

30.times do |n|
    puts fizz_buzz(n)
end

puts 2 + 3
puts 'add TEST'