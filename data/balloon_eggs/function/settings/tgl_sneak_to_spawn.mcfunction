# 設定のトグル
scoreboard players add sneak_to_spawn balloon_eggs_settings 1
scoreboard players operation sneak_to_spawn balloon_eggs_settings %= 2 balloon_eggs_settings


# 設定の再表示
execute as @s run function balloon_eggs:settings