require 'date'

def convert_heisei_to_date(heisei_text)
    m     = heisei_text.match(/平成(?<jp_year>\d+)年(?<mouth>\d+)月(?<day>\d+)日/)
    year  = m[:jp_year].to_i + 1988
    mouth = m[:mouth].to_i
    day   = m[:day].to_i

    if Date.valid_date?(year, mouth, day)
        Date.new(year, mouth, day)
    end
end

p convert_heisei_to_date('平性28年12月31日')
