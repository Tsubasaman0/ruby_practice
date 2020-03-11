class Hero

    attr_accessor :name, :hp, :power, :defense

    def initialize(name, hp, power, defense)
        @name     = name
        @hp       = hp
        @power    = power
        @defense  = defense
    end

    def name
        @name
    end

    def hp
        @hp
    end

    def power
        @power
    end

    def defense
        @defense
    end

    def attack(target) 
        puts "#{name}のこうげき"
        puts "#{target.name}に#{ damege = (power - target.defense) + rand(-5..10)}ダメージを あたえた"
        puts target.hp -= damege
        puts "#{name}\sHP：#{hp} #{target.name}\s残りHP：#{target.hp < 0 ? target.hp = 0: target.hp}"
        puts '---------------------'
    end
end

class Enemy < Hero

end

hero  = Hero.new('ゆうしゃ', 100, 30, 20)
enemy = Enemy.new('スライム', 70, 25, 15)

while enemy.hp > 0
    hero.attack(enemy)
    if enemy.hp < 0
        puts "#{hero.name}は#{enemy.name}をたおした"
        break
    end
    enemy.attack(hero)
end