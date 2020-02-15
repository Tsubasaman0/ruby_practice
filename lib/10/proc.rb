# Procとはブロックをオブジェクト化するためのクラス。

hello_proc = Proc.new do
    'hello'
end

puts hello_proc.call

add_proc = Proc.new { |a, b| a + b }
puts add_proc.call(10, 20)

def hello(&block)
    puts block.class
    puts 'hello'
    text = block.call('こんにちは')
    puts text
end

hello do |text|
    text * 3
end

def greeting(arrange_proc)
    puts 'おはよう'
    text = arrange_proc.call('こんにちは')
    puts text
    puts 'こんばんは'
end

repeat_proc = Proc.new { |block| block * 2 }
greeting(repeat_proc)

# この操作何回も行うことがあるというときに、Procでメソッドを作っておくと便利

def greeting(proc_1,proc_2,proc_3)
    puts proc_1.call('おはよう')
    puts proc_2.call('こんにちは')
    puts proc_3.call('こんばんは')
end

shuffle_proc  = Proc.new { |text| text.chars.shuffle.join }
repeat_proc   = Proc.new { |text| text * 3 }
question_proc = Proc.new { |text| "#{text}?" }

greeting(shuffle_proc, repeat_proc, question_proc)

add_proc_test = Proc.new { |a, b| a.to_i + b.to_i }
add_lamda     = -> (a, b) { a.to_i + b.to_i }

# puts add_lamda.call(10)  => 引数の数が合っていないとエラー起きる
puts add_proc_test.call(10)

#ラムダとProcは使い方はすごく似ているけど、違いがあるということ。クラスは同じ。