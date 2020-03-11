games    = ["-", "+", "-", "+", "-", "-", "+", "+", "+", "-"] # 入力例2["+", "-", "+", "+", "-", "+", "-", "-", "+", "-"]
value    = games.join.freeze
$rule    = ["+", "-", "-", "+"] # 入力例2["-", "+", "+", "-"]

# 入力例２の場合
# rule[0] = '-'
# rule[1] = '+'
# rule[2] = '+'
# rule[3] = '-'
def action(symbols)
    answer = []
    (0..9).each do |n|
        if  n == 0
            if    symbols[9] == '-' && symbols[1] == '-'
                    answer <<  $rule[0]
                elsif symbols[9] == '-' && symbols[1] == '+'
                    answer <<  $rule[1]
                elsif symbols[9] == '+' && symbols[1] == '-'
                    answer <<  $rule[2]
                elsif symbols[9] == '+' && symbols[1] == '+'
                     answer <<  $rule[3]
            end
          elsif n == 9
            if    symbols[8] == '-' && symbols[0] == '-'
                    answer <<  $rule[0]
                elsif symbols[8] == '-' && symbols[0] == '+'
                    answer <<  $rule[1]
                elsif symbols[8] == '+' && symbols[0] == '-'
                    answer <<  $rule[2]
                elsif symbols[8] == '+' && symbols[0] == '+'
                    answer <<  $rule[3]
            end
          else
            if    symbols[n-1] == '-' && symbols[n+1] == '-'
                    answer <<  $rule[0]
                elsif symbols[n-1] == '-' && symbols[n+1] == '+'
                    answer <<  $rule[1]
                elsif symbols[n-1] == '+' && symbols[n+1] == '-'
                    answer <<  $rule[2]
                elsif symbols[n-1] == '+' && symbols[n+1] == '+'
                    answer <<  $rule[3]
            end
        end
    end
    answer 
end
i = 0
while i < 1000
  puts games = action(games).join
  i += 1
    if games == value
        puts 'YES'
        break
        elsif i == 1000
            puts 'NO'
    end
end

#puts value
# answer << ["+", "-", "+", "+", "-", "+", "-", "-", "+", "-"]
# $rule    = ["-", "+", "+", "-"]

# def action(symbols)
#     answer << []
#     (0..9).each do |n|
#         if  n == 0
#             if    symbols[9] == '-' && symbols[1] == '-'
#                 answer << $rule[0]
#             elsif symbols[9] == '-' && symbols[1] == '+'
#                 answer << $rule[1]
#             elsif symbols[9] == '+' && symbols[1] == '-'
#                 answer << $rule[2]
#             elsif symbols[9] == '+' && symbols[1] == '+'
#                 answer << $rule[3]
#             end
#           elsif n == 9
#             if    symbols[8] == '-' && symbols[0] == '-'
#                 answer << $rule[0]
#             elsif symbols[8] == '-' && symbols[0] == '+'
#                 answer << $rule[1]
#             elsif symbols[8] == '+' && symbols[0] == '-'
#                 answer << $rule[2]
#             elsif symbols[8] == '+' && symbols[0] == '+'
#                 answer << $rule[3]
#             end
#           else
#             if    symbols[n-1] == '-' && symbols[n+1] == '-'
#                 answer << $rule[0]
#             elsif symbols[n-1] == '-' && symbols[n+1] == '+'
#                 answer << $rule[1]
#             elsif symbols[n-1] == '+' && symbols[n+1] == '-'
#                 answer << $rule[2]
#             elsif symbols[n-1] == '+' && symbols[n+1] == '+'
#                 answer << $rule[3]
#             end
#         end
#     end
#     answer << end
# p action(answer << n
