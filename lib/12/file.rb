p File.exists?('../select.txt')
p Dir.exists?('../select_directory')

File.open('../../lib/fizz_buzz.rb', 'r') do |file|
    puts file.readlines.count
end

File.open('../../lib/hello_world.txt', 'w') do |file|
    file.puts 'Hello World!'
end

require 'fileutils'
FileUtils.mv('../../lib/hello_world.txt', '../../lib/hello_world.rb')

require 'pathname'

lib = Pathname.new('../../lib')
p lib.file?
p lib.directory?

p lib.join('sample.txt').to_s

