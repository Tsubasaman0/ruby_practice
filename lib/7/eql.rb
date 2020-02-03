a = 'Unkoman'
b = 'Unkoman'
p a.equal?(b)
p 1 == 1.0

h = { 1 => 'Top', 1.0 => 'Float'}
p h[1]
p h[1.0]
p 1.eql?(1.0)

a = 'japan'
b = 'japan'
p a.eql?(b)

c = 1
d = 1.0

p c.eql?(d)
p c.hash
p d.hash

text = '03-1234-4567'

case text
    when /^\d{3}-\d{4*$/
        puts '郵便番号です'
    when /^\d{4}\/\d{1,2}\/\d{1,2}$/
        puts '日付です'
    when /^\d+-\d+-\d+$/
        puts '電話番号です'
end