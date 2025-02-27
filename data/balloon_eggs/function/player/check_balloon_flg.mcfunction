# トグル
## false かつ スポーンエッグを持つ かつ スニーク -> true
execute if score @s balloon_eggs_balloon_flg matches 0 if predicate balloon_eggs:handled_spawn_eggs if predicate balloon_eggs:is_sneaking run scoreboard players set @s balloon_eggs_balloon_flg 1
## even かつ スニークしていない -> false
execute if score @s balloon_eggs_balloon_flg matches -1 unless predicate balloon_eggs:is_sneaking run scoreboard players set @s balloon_eggs_balloon_flg 0

# スコアの初期化
execute unless score @s balloon_eggs_balloon_flg matches -2147483648..2147483647 run scoreboard players set @s balloon_eggs_balloon_flg 0