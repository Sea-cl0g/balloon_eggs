# 風船の紐づけUUIDを設定
data modify entity @s item set from storage balloon_eggs:buffer owner_handled_item
ride @s mount @e[limit=1, sort=nearest, distance=..0.1, type=parrot, tag=noItem]