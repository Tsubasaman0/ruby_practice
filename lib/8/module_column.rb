class Second
    def initialize(player, uniform_number)
        @player = player
        @uniform_number = uniform_number
    end
end

module Clock
    
    class Second
        def initialize(digits)
            @digits = digits
            @baseball_second = ::Second.new('clock', 10)
        end
    end
end

p Clock::Second.new(13)
