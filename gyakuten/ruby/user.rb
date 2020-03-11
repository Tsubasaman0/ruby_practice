require './action'

class User
  attr_accessor :data
  include Action
  
  def initialize(data)
      @data = data
  end
  
  def attack(target)
        damege = data[:power] - target.data[:defense] + rand(-5..5)
        damege < 0 ? damege = 0 : damege


        rand_1_100 = rand(1..100)
        if rand_1_100 < 20
            damege  = ( damege * 1.5 ).floor
            target.data[:HP] -= damege
            target.data[:HP] < 0 ? target.data[:HP] = 0 : target.data[:HP] 
            puts <<~EOS
            #{data[:name]} の かいしんの いちげき！
            #{data[:name]} は #{target.data[:name]} に #{damege} ダメージを あたえた
            -------------
            EOS
        else
            target.data[:HP] -= damege
            target.data[:HP] < 0 ? target.data[:HP] = 0 : target.data[:HP] 
            puts <<~EOS
            #{data[:name]} は #{target.data[:name]} に #{damege} ダメージを あたえた
            -------------
            EOS
        end
  end

  def status
      puts <<~EOS
      なまえ #{data[:name]}
      HP     #{data[:HP]}
      ちから #{data[:power]}
      まもり #{data[:defense]}
      ------------
      EOS
  end
  # ちから #{data[:power]}
  # まもり #{data[:defense]}
  
  def w_status(target)
      status
      target.status
  end
  
end

class Enemy < User

end

user  = User.new(name: 'つばさ', HP: 300, power: 30, defense: 15)
enemy = Enemy.new(name: 'スライム', HP: 200, power: 40, defense: 15)

user.battle(user,enemy)


