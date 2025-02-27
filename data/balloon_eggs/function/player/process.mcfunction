# 風船を召喚するべきなら召喚する
function balloon_eggs:player/check_balloon_flg


# バルーンの召喚
execute if score @s balloon_eggs_balloon_flg matches 1 at @s positioned ~ ~2 ~ run function balloon_eggs:player/spawn_hundled_balloon


# プレイヤーにエフェクトを追加
execute if score @s balloon_count matches 1.. as @a run function balloon_eggs:player/balloon_effect