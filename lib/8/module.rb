module NameChanger
    def change_name
        self.name = 'つばさ'
    end
end

class User
    include NameChanger

    attr_accessor :name

    def initialize(name)
        @name = name
    end
end

user = User.new('Tsubasa')
puts user.name
user.change_name
puts user.name
puts user.name
puts user.name

module Loggable
    def log(text)
        puts "LOG: #{text}"
    end
end

s = 'abc'
#p s.log
s.extend(Loggable)

s.log('Hello')

module BaseBall
    class  Second
        def initialize(player, uniform_number)
            @player         = player
            @uniform_number = uniform_number
        end
    end
end

module Clock
    class Second
        def initialize(digits)
            @digits = digits
        end
    end
end

b = BaseBall::Second.new('Tsubasa', 2)
c = Clock::Second.new(13)

p b
p c

