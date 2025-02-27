# 落下速度低下
execute if score @s balloon_count matches 3..6 run effect give @s slow_falling 1 0 false
execute if score @s balloon_count matches 6.. run effect give @s slow_falling 1 2 false

# 浮遊
execute if score @s balloon_count matches 12.. run effect give @s levitation 1 0 false