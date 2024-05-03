# 物品tick
function shg:item/radar/tick
function shg:item/guns/shotgun8/tick

# 游戏tick
execute if entity @e[tag=shgGaming,limit=1] run function shg:game/tick
execute if entity @e[tag=shgGaming,limit=1] run function shg:game/box/tick