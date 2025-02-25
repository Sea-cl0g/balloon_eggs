# トグル
## false かつ スポーンエッグを持つ かつ スニーク -> true
execute if score @s balloon_eggs_balloon_flg matches 0 if predicate balloon_eggs:handled_spawn_eggs if predicate balloon_eggs:is_sneaking run scoreboard players set @s balloon_eggs_balloon_flg 1
## even かつ スニークしていない -> false
execute if score @s balloon_eggs_balloon_flg matches -1 unless predicate balloon_eggs:is_sneaking run scoreboard players set @s balloon_eggs_balloon_flg 0


# マクロでbuffer内のデータをUUIDごとに保存する
# バルーンの召喚
execute if score @s balloon_eggs_balloon_flg matches 1 at @s positioned ~ ~2 ~ run function balloon_eggs:player/spawn_hundled_ballon


# スコアの初期化
execute if score @s balloon_eggs_balloon_flg matches ..-2147483648 if score @s balloon_eggs_balloon_flg matches 2147483647.. run scoreboard players set @s balloon_eggs_balloon_flg 0