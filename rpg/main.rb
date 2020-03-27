require './item.rb'
require './user.rb'
require './enemy.rb'

$rand  = rand(1..100)
$line  = '-' * 15
$error = "無効な値です。もう一度入力してください。\n#{$line}"

def l
    puts $line
end

def e
    puts $error
end
# ダンジョンメソッド

def dungeon

    # アイテム変数一覧

	hagane = Item.new(name: 'はがねのけん', offense: 50)
	yakuso = Item.new(name: 'やくそう', heal: 100)


	# キャラクター変数一覧

	player = User.new(name: '', max_hp: 300, hp: 300, offense: 150, defense: 100)


	slime = Enemy.new(name: 'スライム', max_hp: 150, hp: 150, offense: 100, defense: 100)
    
    puts "ようこそ Rubyダンジョン へ"
    puts "８文字以内で あなたのなまえを きめてください\n"
    puts $line
    while true
        new_name = gets.chomp
        if new_name.length <= 8
            player.name =  new_name
            break
        else
            puts $error
        end
    end
    puts <<~TEXT
    ゆうしゃ #{player.name} よ
    ボスをたおして　ダンジョンクリア をめざせ

    #{$line}
    TEXT
    player.status
    
        puts <<~TEXT
        たいまつをもち　いりぐちを　はいっていくと
        うすぐらいなか　なにかが　みえてきた

        わかれみちと　よこには　たからばこがある

        1, みぎのみち　へ　いく
        2, ひだりのみち　へ　いく
        3, たからばこ　を　あける
        4, ステータス　を　みる

        #{$line}
        TEXT
    while true
        n = gets.to_i # 選択肢ナンバーの取得

        case n
            when 1
                player.battle(slime)
                player.level_up
                break
            when 2
                puts "さきへ　すすんでいく\n"
                l
                break
            when 3
                puts "たからばこの　あけた"
                puts "#{yakuso.name}を　てにいれた"
                player.equip(yakuso)
                break
            when 4
                player.status
                
                redo
            else
                e
        end
    end
end

dungeon