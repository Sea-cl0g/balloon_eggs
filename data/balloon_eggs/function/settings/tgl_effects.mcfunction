# 設定のトグル
scoreboard players add effects balloon_eggs_settings 1
scoreboard players operation effects balloon_eggs_settings %= 2 balloon_eggs_settings


# 設定の再表示
execute as @s run function balloon_eggs:settings