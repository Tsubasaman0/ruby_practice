#class Team
#    COUNTRIES = ['Japan'.freeze, 'US'.freeze, 'India'.freeze].freeze
#end
# ひとつひとつにfreezeつけるのはめんどくさい

class Team
    #COUNTRIES = deep_freeze(['Japan', 'US', 'India']) #deep_freezeを作成
end

#puts Team::COUNTRIES.frozen?

module Greeter
    def hello
        'hello'
    end
end
#クラスとちがうところ
#モジュールからインスタンス作成不可、継承不可

#greeter = Greeter.new =>エラーでる

class Product
    def title
        log 'title is called.'
        'A great movie'
    end

    private

    def log(text)
        puts "[LOG] #{text}"
    end
end

class User
    def name
        log 'name is called.'
        'Alice'
    end

    private

    def log(text)
        puts "[LOG] #{text}"
    end
end

product = Product.new
puts product.title

user = User.new
puts user.name

module Loggable

    private #直接呼び出せないようにする

    def log
        puts "[LOG]: #{text}"
    end
end

class Product
    include Loggable

    def title
        log 'title is called'
        'A great movie'
    end
end

class User
    include Loggable

    def name
        log 'name is called'
        'Alice'
    end
end

product = Product.new
puts product.title

user = User.new
puts user.name

