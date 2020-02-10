class Team
    COUNTRIES = ['Japan'.freeze, 'US'.freeze, 'India'.freeze].freeze
end
# ひとつひとつにfreezeつけるのはめんどくさい

class Team
    COUNTRIES = deep_freeze(['Japan', 'US', 'India'])
end

puts Team::COUNTRIES.frozen?