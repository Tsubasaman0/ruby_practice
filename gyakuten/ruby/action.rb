require './user'

module Action
    def battle(user, enemy)
        while true 
            user.attack(enemy)
            user.w_status(enemy)
            if enemy.data[:HP] <= 0
                puts "#{user.data[:name]} は #{enemy.data[:name]} を たおした"
                break
            end
            enemy.attack(user)
            user.w_status(enemy)
            if user.data[:HP] <= 0
                puts "#{user.data[:name]} は しんでしまった"
                break
            end
        end
    end
end
