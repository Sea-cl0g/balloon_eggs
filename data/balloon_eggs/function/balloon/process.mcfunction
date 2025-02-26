# ライフタイマーの初期化
execute unless score @s balloon_eggs_balloon_life_timer matches -2147483648..2147483647 run scoreboard players operation @s balloon_eggs_balloon_life_timer = max balloon_eggs_balloon_life_timer


# ライフタイマーの操作
## 減算
execute if entity @s[nbt=!{leash:{}}] run scoreboard players remove @s balloon_eggs_balloon_life_timer 1
execute if entity @s[nbt=!{leash:{}}] run effect give @s levitation infinite 4 true
## 回復
execute if entity @s[nbt={leash:{}}] run scoreboard players operation @s balloon_eggs_balloon_life_timer = max balloon_eggs_balloon_life_timer


effect give @s levitation infinite 0 true
# kill
execute if entity @s[nbt=!{leash:{}}] if score @s balloon_eggs_balloon_life_timer matches ..0 run function balloon_eggs:balloon/safe_kill