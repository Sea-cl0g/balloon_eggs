# 騎乗したアイテムを処理
data modify storage balloon_eggs:buffer kill_id set from entity @s UUID[0]
function balloon_eggs:balloon/find_passenger with storage balloon_eggs:buffer


# 自分自身をkill
kill @s