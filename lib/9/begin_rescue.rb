puts 'start'
module Greete
    def hello
        'hello'
    end
end

begin
    greeter = Greeter.new
rescue => exception
    puts '例外が発生したが、このまま処理を続行する。'
else
end

puts 'End'

def method_1
    puts 'method_1 start.'
    begin
        method_2
    rescue
        puts '例外が発生しました'
    end
    puts 'method_1 end.'
end

def method_2
    puts 'method_2 start.'
    method_3
    puts 'method_2 end.'
end

def method_3
    puts 'method_3 start.'
    1 / 0
    puts 'method_3 end.'
end

method_1

begin
    1 / 0
    rescue => e
        puts "エラークラス: #{e.class}"
        puts "エラーメッセージ: #{e.message}"
        puts "バックトレース ----"
        puts e.backtrace
        puts "----"
end

begin
    1 / 0
rescue ZeroDivisionError
    puts '０で除算しました。'
end

begin
    'abc'.foo
rescue NoMethodError, ZeroDivisionError => e
    puts 'メソッドが存在しないか、除算が原因でエラーが発生しています。'
    puts "エラー内容： #{e.message}"
end

begin
    'abc'.foo
rescue NameError => nm
    puts "#{nm.class}が発生しました"
#rescue NoMethodError => NMM
#    puts "#{NMM.class}が発生しました"
end

begin
    'abc'.foo
rescue NoMethodError => NMM
    puts "#{NMM.class}が発生しました"
rescue NameError => NM
    puts "#{NM.class}が発生しました"
end

begin
    1 / 0
rescue NoMethodError
    puts 'NoMethodErrorです'
rescue NameError
    puts 'NameErrorです'
rescue # StandardError 指定しなければその他すべてのエラーに対応できる
    puts 'その他のエラーです'
end

retry_count = 0

begin
    puts '処理を開始します'
    1 / 0
rescue
    retry_count += 1
    if retry_count <= 3
        puts "retryします。#{retry_count}回目"
        retry
    else
        puts 'retryに失敗しました。'
    end
end