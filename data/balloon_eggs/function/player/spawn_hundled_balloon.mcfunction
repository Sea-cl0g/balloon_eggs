# データを設定したオウムを召喚
data modify storage balloon_eggs:buffer owner_uuid set from entity @s UUID
data modify storage balloon_eggs:buffer owner_handled_item set from entity @s SelectedItem
execute summon parrot run function balloon_eggs:balloon/set_parrot_data


# tgl -> even
scoreboard players set @s balloon_eggs_balloon_flg -1