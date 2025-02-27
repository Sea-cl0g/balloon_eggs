# プレイヤー
##風船の召喚用
scoreboard objectives add balloon_eggs_balloon_flg dummy
##装着した風船の数
scoreboard objectives add balloon_count dummy
##風船を割った回数
scoreboard objectives add popped_balloons dummy


# バルーン
scoreboard objectives add balloon_eggs_balloon_id dummy
scoreboard objectives add balloon_eggs_balloon_health dummy
scoreboard players set max balloon_eggs_balloon_health 1024

scoreboard objectives add balloon_eggs_balloon_life_timer dummy
scoreboard players set max balloon_eggs_balloon_life_timer 60


# 設定
scoreboard objectives add balloon_eggs_settings dummy
scoreboard players set 2 balloon_eggs_settings 2
execute unless score effects balloon_eggs_settings matches -2147483648..2147483647 run scoreboard players set effects balloon_eggs_settings 1
execute unless score sneak_to_spawn balloon_eggs_settings matches -2147483648..2147483647 run scoreboard players set sneak_to_spawn balloon_eggs_settings 1



# リロードメッセージ
tellraw @a {"text":"balloon_eggs has loaded!","bold":true,"color":"green"}

# https://github.com/Sea-cl0g/balloon_eggs by boo_manKnow