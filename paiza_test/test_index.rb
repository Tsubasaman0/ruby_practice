require './index.rb'
require 'minitest/autorun'

class Paiza_test < Minitest::Test
    def life_game_test
            assert_equal '--++--++--', action(games).join
    end
end