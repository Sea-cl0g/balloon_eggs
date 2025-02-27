# title
tellraw @a {"text":"== Balloon_Eggs | setting ==","bold":true,"color":"gold"}


# effects
execute if score effects balloon_eggs_settings matches 0 run tellraw @s ["",{"text":"effects: "},{"text":"false","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function balloon_eggs:settings/tgl_effects"},"hoverEvent":{"action":"show_text","contents":"Click to change the setting."}}]
execute if score effects balloon_eggs_settings matches 1 run tellraw @s ["",{"text":"effects: "},{"text":"true","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function balloon_eggs:settings/tgl_effects"},"hoverEvent":{"action":"show_text","contents":"Click to change the setting."}}]