# タグを追加
tag @s add balloon_parrot


# idを設定
data modify storage balloon_eggs:buffer parrot_id set from entity @s UUID[0]
execute store result score @s balloon_eggs_balloon_id run data get storage balloon_eggs:buffer parrot_id


# オウムのデータを設定
data modify entity @s leash.UUID set from storage balloon_eggs:buffer owner_uuid
data modify entity @s Silent set value true
data modify entity @s DeathLootTable set value "balloon_eggs:empty_table"

effect give @s invisibility infinite 0 true
effect give @s levitation infinite 0 true

effect give @s instant_health infinite 99 true
effect give @s regeneration infinite 99 true
effect give @s resistance infinite 99 true
effect give @s fire_resistance infinite 99 true
effect give @s water_breathing infinite 99 true
effect give @s health_boost infinite 99 true


# アイテムディスプレイをマウント
execute at @s summon item_display run function balloon_eggs:balloon/set_item_data with storage balloon_eggs:buffer