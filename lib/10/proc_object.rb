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

split_proc = :split.to_proc
p split_proc.call('a-b-c-d e')
p split_proc.call('a-b-c-d e', '-')
p split_proc.call('a-b-c-d e', '-', 3)

def generate_proc(array)
    counter = 0

    Proc.new do
        counter += 10
        array << counter
    end
end

values = []
sample_proc = generate_proc(values)
p values

p sample_proc.call
p sample_proc.call
p values

def proc_return
    f = Proc.new { |n| return n * 10 }
    ret = [1, 2, 3].map(&f)
    "ret: #{ret}"
end

def lamda_return
    f = ->(n) { return n * 10 }
    ret = [1, 2, 3].map(&f)
    "ret: #{ret}"
end

p proc_return
p lamda_return


def lamda_break
    f = ->(n) { break n * 10 }
    ret = [1, 2, 3].map(&f)
    "ret: #{ret}"
end

p lamda_break

def proc_break
    f = Proc.new { |n| break n * 10 }
    ret = [1, 2, 3].map(&f)
    "ret: #{ret}"
end

p proc_break

# lamdaとProcは使い方すごく似ていて、簡略な書き方に見えがちだけど、別のものなので、細かい違いがあることを理解しておく
