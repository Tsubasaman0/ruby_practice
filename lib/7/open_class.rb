class  MyString < String
    
end

s = MyString.new('Hello')
p s
p s.class

class MyArray < Array
end

a = MyArray.new()
a << 1
a << 2
p a
p a.class

class String
    def shuffle
        chars.shuffle.join
    end
end

s = 'Hello, I am Tsubasa'
p s.shuffle
p s.shuffle

# モンキーパッチ...既存のメソッドを自分の期待する挙動に変更（上書き）すること

class User
    def initialize(name)
        @name = name
    end

    def hello
        "Hello, #{@name}!"
    end
end

#以下モンキーパッチ後

user = User.new('Tsubasa')
puts user.hello

class User
    def hello
        "#{@name}さん、こんにちは"
    end
end

puts user.hello