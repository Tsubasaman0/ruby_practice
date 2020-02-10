class User
    def hello
        'Hello!'
    end
    alias konnitiwa hello # helloと同じ内容のメソッドとして呼び出せる。

    # undef konnitiwa 削除するメソッド
end

user = User.new
puts user.konnitiwa

class User
    class BloodType
        attr_reader :type

        def initialize( type )
            @type = type
        end
    end

    def name=( value )
        @name = value
    end
end

user = User.new
blood_type = User::BloodType.new('キャベツ')
puts blood_type.type

#privateとかクラスに直接つけられない。他の言語と違う。

class Product
    attr_reader :number, :title

    def initialize(number, title)
        @number = number
        @title  = title
    end
    def ==(other) # other=>その他
        if other.is_a?(Product)
            code = other.code
        else
            false
        end
    end
end

a = Product.new('A-0001', 'A great movie')
b = Product.new('B-0001', 'An awesome film')
c = Product.new('C-0001', 'A great movie')

p 1 == a