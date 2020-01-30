fluits = %w(
    orange
    melon
    apple
)

numbers = [1, 2, 3]

fluits.each do |fluit|
    numbers.each do |n|
        next if n.even?
        puts "#{fluit},#{n}"
    end
end


def buy_burger(menu, drink: true, potato: true, **otehers)
    puts otehers
end

<<<<<<< HEAD
puts buy_burger('fish', drink: true, potato: true, sarad: true)
=======
buy_burger('fish', drink: true, potato: true, sarad: true)

items = { right: 'sword', left: 'shield', head: 'kabuto' }
items_h = [ [right: 'sword'], [left: 'shield'], [head: 'kabuto'] ]

h = Hash.new('Hello')
a = h[:foo]
b = h[:bar]

a.upcase!
p a
p b
p h

h = Hash.new { |hash, key| hash[key] = 'hello' }
h[:foo]

p %s!ruby is run!
p %i(apple mango orange)

def juice_price(juice)
    prices = { cola: 150, tea: 120, warter: 100 }
    prices[juice]
end

puts juice_price(:col)


text = '私の誕生日は1977年7月17日です'
m = /(?<year>\d+)年(?<mouth>\d+)月(?<day>\d+)日/.match(text)

puts m[:year]

text = '郵便番号は131-0021です'
puts text[/\d{3}-\d{4}/]

%r!http://exmple/.com!

pattern = '\d{3}-\d{4}'
puts '123-1234' =~ /#{pattern}/

text = '私の誕生日は1977年7月17日です。'
text =~ /(\d+)年(\d+)月(\d)日/

p /\d{3}-\d{4}/.match('123-1234')

users = []
users << { first_name: 'Tsubasa', last_name: 'Iwasawa', age: 27 }
users << { first_name: 'Maho', last_name: 'Nioka', age: 26 }

def full_name(user)
    "#{user[:first_name]} #{user[:last_name]}"
end

users.each do |user|
    puts "氏名: #{full_name(user)}、年齢: #{user[:age]}"
end

puts users[0][:first_name]

puts "---------ここからClassの勉強------------\n"

#class User
#    attr_reader :first_name, :last_name, :age
#
#    def initialize( first_name, last_name, age )
#        @first_name = first_name
#        @last_name  = last_name
#        @age        = age
#    end
#
#    def full_name
#        "#{first_name} #{last_name}"
#    end
#
#end

#users = []
#users << User.new( 'Alice', 'Ruby', 20 )
#users << User.new( 'Bob', 'Python', 30 )



#users.each do |user|
#    puts "氏名: #{user.full_name} 年齢: #{user.age}"
#end

class User

    attr_accessor :name

    def initialize( name )
        @name = name
    end

    def hello
        shuffle_name = @name.chars.shuffle.join
        "Hello!, I am #{shuffle_name}."
    end

    def self.create_users( names )
        names.map do |name|
            User.new( name )
        end
    end

end
names = ['Alice', 'Bob', 'Carol']
users = User.create_users( names )

users.each { |user|
    puts user.hello
}
>>>>>>> save
