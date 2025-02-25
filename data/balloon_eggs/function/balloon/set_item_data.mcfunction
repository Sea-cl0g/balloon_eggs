# タグを追加
tag @s add balloon_item


# idを設定
$scoreboard players set @s balloon_eggs_balloon_id $(parrot_id)


# アイテムのデータを設定
data modify entity @s item set from storage balloon_eggs:buffer owner_handled_item


# オウムに騎乗
$ride @s mount @e[limit=1, distance=..0.1, scores={balloon_eggs_balloon_id=$(parrot_id)}, sort=nearest, type=parrot]