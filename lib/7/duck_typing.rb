class Product
    def initialize(name, price)
        @name  = name
        @price = price
    end

    def display_text
        stock = stock? ? 'あり' : 'なし'
        "商品名： #{@name} 価格： #{@price}円 在庫： #{stock}"
    end
    def stock?
        raise 'Must implement stock? in subclass.'
    end
end

class DVD < Product
    def stock?
        true
    end
end

product = Product.new('A great film', 1000)
#puts product.display_text
dvd     = DVD.new('An awesome film', 3000)
puts dvd.display_text

s = 'Tsubasa'
puts s.respond_to?(:split)
puts s.respond_to?(:name)

def display_name(object)
    if object.respond_to?(:name)
        puts "Name is <<#{object.name}>>"
    else
        puts 'No name.'
    end
end

def add_ten(n)
    n.to_i + 10
end

puts add_ten(1)
puts add_ten(nil)

def add_numbers(a = 0, b = 0)
    a + b
end

puts add_numbers
puts add_numbers(1)
puts add_numbers(1, 2)

