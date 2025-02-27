# ライフタイマーの初期化
execute unless score @s balloon_eggs_balloon_life_timer matches -2147483648..2147483647 run scoreboard players operation @s balloon_eggs_balloon_life_timer = max balloon_eggs_balloon_life_timer


# ライフタイマーの操作
## 減算
execute unless data entity @s leash run scoreboard players remove @s balloon_eggs_balloon_life_timer 1
execute unless data entity @s leash run effect give @s levitation infinite 4 true
## 回復
execute if data entity @s leash run scoreboard players operation @s balloon_eggs_balloon_life_timer = max balloon_eggs_balloon_life_timer


# 一定以上の攻撃を受けた場合
execute store result score @s balloon_eggs_balloon_health run data get entity @s Health
scoreboard players operation @s balloon_eggs_balloon_health -= max balloon_eggs_balloon_health
execute if score @s balloon_eggs_balloon_health matches ..-4 run function balloon_eggs:balloon/safe_kill


# 装着した風船の数を数える
execute if data entity @s leash.UUID run function balloon_eggs:balloon/balloon_count_add with entity @s leash


# オーナーにエフェクトを与える
execute if data entity @s leash.UUID run function balloon_eggs:balloon/effect_add_owener_find with entity @s leash


# 紐から外れて時間がたった
execute unless data entity @s leash if score @s balloon_eggs_balloon_life_timer matches ..0 run function balloon_eggs:balloon/safe_kill