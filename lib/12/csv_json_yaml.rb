require 'csv'

CSV.open('../../lib/sample.csv', 'w') do |csv|
    csv << ['Name', 'Email', 'Age']
    csv << ['Tsubasa', 'sample@sample.com', 27]
end

# CSV.foreach('../../lib/sample.tsv', col_sep: "\t") do |row|
#     puts "1: #{row[0]} 2: #{row[1]} 3: #{row[2]}"
# end

require 'json'

user = {name: 'Tsubasa', email: 'tsubasa@sample.com', age: 27}

user_json = user.to_json
puts user_json
p JSON.parse(user_json)

require 'yaml'

yaml = <<TEXT
Tsubasa:
    name: 'Tsubasa'
    email: 'tsubasa@sample.com'
    age: 27
TEXT

users = YAML.load(yaml)

users['Tsubasa']['gender'] = :men
puts YAML.dump(users)