add_proc = Proc.new { |a, b| a + b }

puts add_proc.call(10, 20)

puts add_proc.yield(10, 20)

puts add_proc.(10, 20)

puts add_proc[10, 20]

puts add_proc === [10,20]

def judge(age)
    adult = Proc.new {|n| n > 20}
    child = Proc.new {|n| n < 20}

    case age
    when adult
        '大人です'    
    when child
        '子供です'
    end
end
puts judge(20)
puts judge(34)
puts judge(10)