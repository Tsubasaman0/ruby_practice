print 'Text?: '
text = gets.chomp
print 'Pattern?: '
pattern = gets.chomp
rexap = Rexap.new(pattern)
matches = text.scan(rexap)
if matches.size > 0
    puts "Matched: #{macth.join(', ')}"
else
    puts 
end
