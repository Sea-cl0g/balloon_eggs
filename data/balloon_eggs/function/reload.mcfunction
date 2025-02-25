scoreboard objectives add balloon_eggs_balloon_flg dummy
scoreboard objectives add balloon_eggs_balloon_id dummy
scoreboard objectives add balloon_eggs_balloon_life_timer dummy
scoreboard players set max balloon_eggs_balloon_life_timer 60

say balloon_eggs has loaded!!

kill @e[type=!player]