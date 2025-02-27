# プレイヤーの処理
execute as @a run function balloon_eggs:player/check_balloon_flg


# バルーンの処理
scoreboard players reset @a balloon_count
execute as @e[type=minecraft:parrot, tag=balloon_parrot] at @s run function balloon_eggs:balloon/process