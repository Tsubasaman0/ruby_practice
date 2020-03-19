require './item.rb'
require './user.rb'
require './enemy.rb'

$rand  = rand(1..100)
$line  = '-' * 15
$error = "無効な値です。もう一度入力してください。\n#{$line}"


# アイテム変数一覧

hagane = Item.new(name: 'はがねのけん', offense: 50)
yakuso = Item.new(name: 'やくそう', heal: 100)


# キャラクター変数一覧

tsubasa = User.new(name: 'つばさ', max_hp: 300, hp: 300, offense: 150, defense: 100)

slime   = Enemy.new(name: 'スライム', max_hp: 150, hp: 150, offense: 100, defense: 100, skill: :slime_bom)


# メソッドテスト

tsubasa.equip(yakuso)
puts tsubasa.status
puts slime.status
slime.slime_bom(tsubasa)
#tsubasa.battle(slime)

# tsubasa.equip(yakuso)
# puts tsubasa.status
# tsubasa.attack(slime)
# slime.attack(tsubasa)
# tsubasa.use_item(yakuso)

# puts tsubasa.status
# puts slime.status