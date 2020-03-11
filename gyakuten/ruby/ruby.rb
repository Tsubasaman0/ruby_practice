def a
    puts '回答↓↓'
end
#Q1. 次の配列の最後に "斎藤" を追加し，出力して下さい。
names = ["田中", "佐藤", "佐々木", "高橋"]
a
p names << '斎藤'
#Q2. 次の二つの配列を合体させた新しい配列 array を作成し，出力して下さい。
array1 = %w(dog cat fish)
array2 = %w(bird bat tiger)
a
p array1 + array2
#Q3. 次の配列の中に 3 がいくつあるかを出力するコードを書き，出力して下さい。
numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]
a
p numbers.count(3)
#Q4. 次の配列から nil の要素を削除し，出力して下さい。（新しい配列を作成せずに実現して下さい）
sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]
p sports.compact
#Q5. 配列が空であれば true，1つ以上の要素があれば false を出力するコードを書いて下さい。
#例

array1 = []
#-> true

array2 = [1, 5, 8, 10]
#-> false
a
def array_nil?(array)
    if array == []
        puts true
    else
        puts false
    end
end
#Q6. 次の配列から，期待された結果の配列 numbers2 を作成し，出力して下さい。
numbers1 = [1, 2, 3, 4, 5]
#期待する配列

[10, 20, 30, 40, 50]
a
p numbers2 = numbers1.map { |n| n * 10}
#Q7. 次の配列の要素を 文字列 から 数字 に変換し，出力して下さい。（新しい配列を作成せずに実現して下さい）
array = ["1", "2", "3", "4", "5"]
#期待する配列

[1, 2, 3, 4, 5]
a
p array = array.map { |n| n.to_i}
#Q8. 期待する出力結果になるようにコードを書き加えて下さい。
programming_languages = %w(ruby php python javascript)

programming_languages = programming_languages.map { |word| word.capitalize }
upper_case_programming_languages = programming_languages.map { |word| word.upcase }
# コードを追加
a
# 以下は変更しないで下さい
p programming_languages
p upper_case_programming_languages
#期待する出力結果

["Ruby", "Php", "Python", "Javascript"]
["RUBY", "PHP", "PYTHON", "JAVASCRIPT"]
#Q9. 次の配列を用いて，期待通りの出力結果になるようにコードを書いて下さい。
names = ["田中", "佐藤", "佐々木", "高橋"]
#期待結果

#会員No.1 田中さん
#会員No.2 佐藤さん
#会員No.3 佐々木さん
#会員No.4 高橋さん
a
puts names = names.map.with_index(1) { |name, n| "会員No.#{n} " + name }
#Q10. 次の配列の各要素について， うに という文字列が含まれていれば「好物です」と表示し，そうでなければ「まぁまぁ好きです」と出力するコードを書いて下さい。
foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)
a
if foods.include?('うに')
    puts '好物です'
else
    puts 'まぁまぁ好きです'
end
#Q11. 次の配列を用いて，期待する出力結果になるようにコードを書いて下さい。
sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]
#期待する出力結果

#ユーザーの趣味一覧
#No1 サッカー
#No2 バスケ
#No3 野球
#No4 フットサル
#No5 水泳
#No6 ハンドボール
#No7 卓球
#No8 ボルダリング
a
puts sports = sports.flatten.uniq.map.with_index(1) { |word, n| "No.#{n} " + word }
#Q12. 次のハッシュから name の値を出力して下さい。
data = { user: { name: "satou", age: 33 } }
a
puts data[:user][:name]
#Q13. 次の user_data に，update_data の内容を反映させ，user_data の内容を書き換え，出力して下さい。
user_data = { name: "神里", age: 31, address: "埼玉" }
update_data = { age: 32, address: "沖縄" }
a
p user_data = user_data.merge(update_data)
#Q14. 次の配列から全てのキーを取り出した配列を作成し，出力して下さい。
data = { name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com" }
a
p data = data.map { |key, value| key}
#Q15. age というキーが含まれている場合は OK ，含まれていない場合は NG という文字列が出力されるコードを書いて下さい。
#例

data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
#-> OK

data2 = { name: "yamada", hobby: "baseball", role: "normal" }
#-> NG
a
def age_there(data)
    if data.include?(:age)
        puts 'OK'
    else
        puts 'NG'
    end
end
age_there(data1)
age_there(data2)
#Q16. 次の配列の各要素について，「私の名前は〜です。年齢は〜歳です。」と表示して下さい。
users = [
  { name: "satou", age: 22 },
  { name: "yamada", age: 12 },
  { name: "takahashi", age: 32 },
  { name: "nakamura", age: 41 }
]
users.each do |hash|
    puts  "私の名前は#{hash[:name]}です。年齢は#{hash[:age]}歳です。"
end
#Q17. 次の Userクラス 内にコードを追加し，期待する出力結果になるようにして下さい。
class User
    def initialize(data)
      @data = data
    end
# コードを追加
    def info
      puts <<~ECS
      名前：#{@data[:name]}
      年齢：#{@data[:age]}
      性別：#{@data[:gender]}
      管理者権限：#{@data[:admin] == true ? '有り' : '無し'}
      ECS
    end

    def introduce
      if @data[:age] == 32
        puts "こんにちは，#{@data[:name]}と申します。宜しくお願いいたします。"
      elsif @data[:age] == 10
        puts "はいさいまいど〜，#{@data[:name]}です！！！"
      end
    end
end

user1 = User.new(name: "神里", age: 32, gender: "男", admin: true)
user2 = User.new(name: "あじー", age: 32, gender: "男", admin: false)

user1.info
puts "-------------"
user2.info
#期待する出力結果
#
#名前：神里
#年齢：32
#性別：男
#管理者権限：有り
#-------------
#名前：あじー
#年齢：32
#性別：男
#管理者権限：無し
#Q18. 年齢を用いた場合分けを利用して，期待する出力結果になるようなUserクラスを作成して下さい。
# コードを追加

user1 = User.new(name: "あじー", age: 32)
user2 = User.new(name: "ゆたぼん", age: 10)

puts user1.introduce
puts user2.introduce
#期待する出力結果
#
#こんにちは，あじーと申します。宜しくお願いいたします。
#はいさいまいど〜，ゆたぼんです！！！
#Q19. 次のコードはエラーが出ます。期待する出力結果となるようにコードを修正して下さい。
class Item
  def initialize(name)
    @name = name
  end
  def name
    @name[:name]
  end
end

book = Item.new(name: "ゼロ秒思考")
puts book.name
#期待する出力結果
#
#ゼロ秒思考
#Q20. 次の仕様を満たした上で，期待する出力結果になるようにコードを追加して下さい。
#年齢区分は，幼児(0〜5歳)，子供(6〜12歳)，成人(13〜64歳)，シニア(65〜120歳)の4パターンとします。（この範囲外の年齢については対処しなくてOKです）
class User

  # コードを追加
  def initialize(data)
    @data = data
  end
  def reference
    @data
  end
end

class Zoo

  # コードを追加
  def initialize(data)
    @data = data
  end

  def info_entry_fee(data)
    # p data.reference[:name]
    user_age = data.reference[:age]
    price    = @data[:entry_fee]
    puts "#{data.reference[:name]}の入場料金は\s#{
          if    user_age >= 0  && user_age <= 5
              price[:infant]
          elsif user_age >= 6  && user_age <= 12
              price[:children]
          elsif user_age >= 13 && user_age <= 64
             price[:adult]
          elsif user_age >= 65 && user_age <= 120
             price[:senior]
          end
    }\s円です。"
  end
end

zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

users = [
  User.new(name: "たま", age: 3),
  User.new(name: "ゆたぼん", age: 10),
  User.new(name: "あじー", age: 32),
  User.new(name: "ぎん", age: 108)
]


users.each do |user|
  zoo.info_entry_fee(user)
end

#users.each do |user|
#  zoo.info_entry_fee(user)
#end
#期待する出力結果
#
#たまさんの入場料金は 0 円です。
#ゆたぼんさんの入場料金は 400 円です。
#あじーさんの入場料金は 800 円です。
#ぎんさんの入場料金は 500 円です。