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
    message =<<~TEXT
        なまえ: #{@name}
        HP   : #{@hp} / #{@max_hp}
        ちから: #{@offense}
        まもり: #{@defense}
        どうぐ: #{
            if @item
                @item.name
            else
                'なし'
            end}
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
                           if choice == 'Y' || choice == "y"
                               self.use_item(self.item)
                           elsif choice == 'N' || choice == 'n'
                               redo
                           else
                               puts $error
                           end
                       else
                           puts "どうぐが ありません"
                           puts $line
                           redo
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
                      end
            	else
            		puts $error
            	    redo
            end # /case コマンド選択
             enemy.attack(self)
        end # / while バトルのループ
    end # /def battle
end # /class User
