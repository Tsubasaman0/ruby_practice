module Loggable
    def log(text)
        puts "[LOG] #{text}"
    end
end

module Taggable
    def price_tag
        # priceメソッドはinclude先で定義されている前提
        "#{self.price}円"
    end
end

class Product
    include Loggable
    include Taggable
    def title
        log 'title is called'
        'A great movie'
    end
    # log 'test!!!!!'
    def price
        1000
    end
end

class User
    extend Loggable

    def name
        log 'name is called'
        'Aliice'
    end
end

puts User.log('test')

puts Product.include?(Loggable)
p Product.included_modules
p Product.ancestors


product = Product.new
p product.class.include?(Loggable)
p product.class.included_modules

p product.is_a?(Product)
p product.is_a?(Loggable)
p product.is_a?(Object)

p product.price_tag

