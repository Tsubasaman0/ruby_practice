module Loggable
    PREFIX = '[PREFIX]'.freeze
        def log(text)
            puts "LOG: #{PREFIX}#{text}"
        end

        module_function :log
end


Loggable.log('Hello')

class Product
    include Loggable

    def title
        log 'title is calld'
        'A great movie'
    end

end

product = Product.new
puts product.title

p Math.sqrt(2)

class Calculater
    include Math
    def calc_sqrt(n)
        sqrt(n)
    end
end

calculator = Calculater.new
p calculator.calc_sqrt(2)


module AwesomeApi
    @base_url = ''
    @debug_mode = false

    class << self
        def base_url=(value)
            @base_url = value
        end

        def base_url
            @base_url
        end

        def debug_mode=(value)
            @debug_mode = value
        end

        def debug_mode
            @debug_mode
        end

        # attraccessor :base_url, :debug_mode
    end
end

AwesomeApi.base_url = 'http://example.com'
AwesomeApi.debug_mode = true

p AwesomeApi.base_url
p AwesomeApi.debug_mode
