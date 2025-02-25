# オウムのデータを設定
data modify entity @s leash.UUID set from storage balloon_eggs:buffer owner_uuid
data modify entity @s Silent set value true

#effect give @s invisibility infinite 0 true
effect give @s levitation infinite 0 true

effect give @s instant_health infinite 99 true
effect give @s regeneration infinite 99 true
effect give @s resistance infinite 99 true
effect give @s fire_resistance infinite 99 true
effect give @s water_breathing infinite 99 true
effect give @s health_boost infinite 99 true


# アイテムディスプレイをマウント
tag @s add noItem
data modify storage balloon_eggs:buffer parrot_uuid set from entity @s UUID
execute at @s summon item_display run function balloon_eggs:set_item_data
tag @s remove noItem