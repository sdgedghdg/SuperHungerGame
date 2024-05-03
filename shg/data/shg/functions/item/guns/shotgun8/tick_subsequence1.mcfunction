# 实在没想好怎么命名
## 装弹：检测玩家是否手持“已装填的弩”，检测成功即把手头物品换成“未装填的弩但弹药量+1”
execute as @s[nbt={SelectedItem:{tag:{Tags:["SHGI_Shotgun8_not_loaded"],Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}]}}}] run function shg:item/guns/shotgun8/tick_subsequence1_subsequence1

## 连射：检测玩家是否手持“未装填的弩”，检测成功即把手头物品换成“装填的弩但弹药量-1”
execute as @s[nbt={SelectedItem:{tag:{Tags:["SHGI_Shotgun8_loaded"],Charged:0b}}}] run function shg:item/guns/shotgun8/tick_subsequence1_subsequence2
