file = File.open('some.txt', 'w')

begin
    file << 'Hello'
ensure
    file.close
end


begin
    puts 'hello'    
rescue
    puts '例外が発生しました。'
else
    puts '例外は発生しませんでした。'
end

ret =
    begin
        'OK'
        1 / 0
    rescue
        'error'
    ensure
        'ensure'
    end

puts ret

def some_method(n)
    begin
        1 / n
        'OK'
    rescue
        'error'
    ensure
        'ensure'
    end
end

puts some_method(0)