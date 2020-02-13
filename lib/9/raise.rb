def country_of(country)
    case country
    when :japan
        puts 'yen'
    when :us
        puts 'doller'
    when :india
        puts 'rupee'
    else
        #raise "無効な国名です。#{country}"
    end
end

country_of(:japan)
#country_of(:italy)

def convert_heisei_to_data(heisei_text)
    m     = heisei_text.match(/平成(?<jp_year>\d+)年(?<mouth>\d+)月(?<day>\d+)日/)
    year  = m[:jp_year].to_i + 1988
    mouth = m[:mouth].to_i
    day   = m[:day].to_i
    begin
        Date.new(year, mouth, day)

    rescue ArgumentError
        nil
    end
end
p convert_heisei_to_data('平性28年12月31日')