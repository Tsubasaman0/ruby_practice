$rand = rand(1..100)
class Enemy < User
    attr_accessor :skill
    def initialize(**params)
        super
        @skill = params[:skill]
    end

    def slime_bom(target)
        damege   = (self.offense * 1.5).floor - target.defense / 2 + rand(-15..15)
        target.hp -= damege
        if target.hp < 0
            target.hp = 0
        end
        puts "#{self.name}は とうぜん ばくはつした"
        puts "#{target.name}に  #{damege} ダメージ あたえた"
        puts $line
    end
end