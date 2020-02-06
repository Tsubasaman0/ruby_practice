class Team
    COUNTRIES = ['Japan'.freeze, 'US'.freeze, 'India'.freeze].freeze
end
# ひとつひとつにfreezeつけるのはめんどくさい

class Teams
    COUNTRIES = deep_freeze(['Japan', 'US', 'India'])
end

puts Teams::COUNTRIES.frozen?