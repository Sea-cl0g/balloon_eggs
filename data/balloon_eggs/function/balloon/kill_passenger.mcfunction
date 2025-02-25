# サウンド
playsound entity.firework_rocket.blast ambient @a ~ ~ ~

$say $(id)
# パーティクル
$particle item{item:"$(id)"} ~ ~ ~ 0.1 0.1 0.1 0.1 16 normal @a


# 自分自身をkill
kill @s