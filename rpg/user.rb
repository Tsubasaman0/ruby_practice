class User
    attr_accessor :name, :hp, :offense, :defense, :item
    attr_reader :max_hp
  def initialize(**params)
      @name     = params[:name]
      @max_hp   = params[:max_hp]
      @hp       = params[:hp]
      @offense  = params[:offense]
      @defense  = params[:defense]
      @item     = params[:item]
  end
  
  def status
    puts message =<<~TEXT
        なまえ: #{@name}
        HP   : #{@hp} / #{@max_hp}
        ちから: #{@offense}
        まもり: #{@defense}
        どうぐ: #{@item ? @item.name : 'なし'}
        #{$line}
        TEXT
  end
  
  def equip(weapon)
    begin
      self.item     = weapon
      self.offense += weapon.offense
      puts "#{@name}は #{weapon.name}を そうびした"
    rescue
      
    end
  end
  
  def attack(target)
      damege   = self.offense - target.defense / 2 + rand(-5..5)
      target.hp -= damege
      if target.hp < 0
          target.hp = 0
      end
      puts "#{self.name}の こうげき"
      puts "#{target.name}に  #{damege} ダメージ あたえた"
      puts $line
  end
  
  def use_item(item)
      self.hp += item.heal
      if self.hp > self.max_hp
          puts "#{self.name}の HP が #{(self.max_hp - self.hp).abs} かいふくした"
          self.hp = self.max_hp
      else
          puts "#{item.name}を つかった"
          puts "#{self.name}の HP が #{item.heal} かいふくした"
      end
      @item = nil
  end

  def level_up
    up_hp      = rand(50..100)
    up_offense = rand(5..15)
    up_defense = rand(5..15)

    @max_hp  += up_hp
    @offense += up_offense
    @defense += up_defense

    @hp       = @max_hp

    puts message =<<~TEXT
    #{@name}の　レベルがあがった

    #{$line}
    なまえ: #{@name}
    HP    : #{@hp} / #{@max_hp} + #{up_hp}
    ちから: #{@offense} + #{up_offense}
    まもり: #{@defense} + #{up_defense}
    どうぐ: #{@item ? @item.name : 'なし'}

    #{$line}
    TEXT
  end
  
    def battle(enemy)
      puts "#{enemy.name} があらわれた"
      puts $line
      
      while true
            puts status = <<~TEXT
            なまえ: #{self.name}
            HP   : #{self.hp} / #{self.max_hp}
            どうぐ: #{self.item ? self.item.name : 'なし'}
            #{$line}
            TEXT

            # 味方のターン    
            puts command = <<~TEXT
            1, たたかう
            2, どうぐ
            3, にげる
            #{$line}
            TEXT

            num = gets.to_i # コマンド選択

            case num
            	when 1 # たたかう
            		self.attack(enemy)
                when 2 # どうぐ
                       if self.item
                           puts "#{self.item.name} をつかいますか？[Y/N]"
                           puts $line
                           choice = gets.chomp
                       end
                when 3 # にげる
                      if rand(1..100) > 70
                          puts "#{self.name}は にげだした"
                          puts $line
                          break
                      else
                          puts "#{self.name}は にげだすことに しっぱいした"
                          enemy.attack(self)
                          redo
                      end # /にげる
            	else
            		puts $error
            	    redo
            end # /case コマンド選択
             enemy.attack(self)
            if enemy.hp == 0
                puts "#{enemy.name}を　たおした"
                 break
            elsif self.hp == 0
                puts "#{self.name}は　やられてしまった"
                puts "ゲームオーバー"
                break
            end # / 戦闘結果判定
        end # / while バトルのループ
    end # /def battle
end # /class User
