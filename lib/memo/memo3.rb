# クラスの継承について

class User
    attr_reader :name, :weight

    def initialize( name, weight )
        @name = name
        @weight = weight
    end

    protected :weight

    def hello
        "helloooo!!"
    end



end


class Foo < User
end


user =  User.new('Bob', 40)

puts user.name



class Product
    attr_reader :name, :price

    def initialize( name, price )
        @name  = name
        @price = price
    end

    def to_s
        "name: #{name}, price#{price}"
    end

end

product = Product.new( 'A great movie', 1000 )

puts product.name
puts product.price

class DVD < Product
    attr_reader :running_time

    def initialize( name, price, running_time )
        super( name, price )
        @running_time = running_time
    end

    def to_s
        "#{super}, running_time: #{running_time}"
    end
end

dvd = DVD.new( 'Sangokushi', 3000, 120 )
puts dvd.to_s
puts product.to_s


p   monsters[monsters_i][1] <= attack && monsters[monsters_i][2] >= attack \    # 攻撃力の条件値
    && monsters[monsters_i][3] <= defense && monsters[monsters_i][4] >= defense \ # 防御力の条件値
    && monsters[monsters_i][5] <= speed && monsters[monsters_i][6] >= speed        # 素早さの条件値