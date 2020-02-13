puts 1 / 1 rescue 0
p 1 / 0 rescue p 0

require 'date'

#def to_date(string)
#    begin
#        Date.parse(string)
#    rescue
#        p nil
#    end
#end

#puts to_date('2017-01-01')
#puts to_date('abc')

def to_date(string)
    Date.parse(string) rescue p nil
end

puts to_date('2017-01-01')
puts to_date('abc')

begin
    1 / 0
rescue
    puts "#{$!.class} #{$!.message}"
    puts $@
end

def fizz_buzz(n)
        if n % 15 == 0
            'Fizz Buzz'
        elsif n % 3 == 0
            'Fizz'
        elsif n % 5 == 0
            'Buzz'
        else
            n.to_s
        end

    rescue => e
        puts "エラー発生#{e.class} #{e.message}"
end

puts fizz_buzz(nil)

puts 222

class NoCountryError < StandardError
    attr_reader :country

    def initialize(message, country)
        @country = country
        super("#{message} #{country}")
    end
end

def currency_of(country)
    case country
    when :japan
        'yen'
    when :us
        'doller'
    when :india
        'rupee'
    else
        raise NoCountryError.new('無効な国名です。', country)
    end
end

begin
    puts currency_of(:italy)
rescue NoCountryError => e
    puts e.message
    puts e.country
end
