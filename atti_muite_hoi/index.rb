require_relative 'janken'

$goo   = :goo
$par   = :par
$choki = :choki

class Player
    def what_put
        card = rand(1..3)
        case card
        when 1
            $goo
        when 2
            $par
        when 3
            $choki
        end
    end
end

enemy = Player.new
p enemy.what_put