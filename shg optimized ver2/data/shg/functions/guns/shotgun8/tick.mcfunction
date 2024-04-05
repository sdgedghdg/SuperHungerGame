## 连续装填+射击：
tag @a[nbt={SelectedItem:{tag:{Tags:["SHGI_Shotgun8"]}}}] add SHGI_Shotgun8
# execute as @e[nbt={Item:{id:"minecraft:crossbow",tag:{Tags:["SHGI_Shotgun8"]}}}] at @s run tag @a[limit=1,sort=nearest] add SHGI_Shotgun8
execute as @a[tag=SHGI_Shotgun8] at @s run function shg:guns/shotgun8/tick_subsequence1

## 提前结束装弹（按Q丢出时”）：
execute at @e[nbt={Item:{tag:{Tags:["SHGI_Shotgun8_not_loaded"]}}},nbt=!{Item:{tag:{Tags:["SHGI_Shotgun08"]}}}] as @a[limit=1,sort=nearest] run function shg:guns/shotgun8/end_loading_bullets

tag @a[nbt=!{SelectedItem:{tag:{Tags:["SHGI_Shotgun8"]}}}] remove SHGI_Shotgun8
