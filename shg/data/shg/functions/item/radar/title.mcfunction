scoreboard players set @s shgRadar 0

# execute if entity @e[type=#shg:radar_object] run say 1

# tick中给有此标签的人计算冷却
execute as @s[tag=!shgRadarCoolDown] unless entity @e[type=#shg:radar_object,distance=0.5..35] run playsound minecraft:block.note_block.flute player @a ~ ~ ~ 1 0.7
execute as @s[tag=!shgRadarCoolDown] if entity @e[type=#shg:radar_object,distance=0.5..35] run playsound minecraft:block.note_block.banjo player @a ~ ~ ~ 1 0.3
execute as @s[tag=!shgRadarCoolDown] run particle firework ~ ~1.5 ~ ~ ~ ~ 0 10 force
execute as @s[tag=!shgRadarCoolDown] if entity @e[type=#minecraft:impact_projectiles,distance=..35] run title @s actionbar {"text":"35m范围存在投掷物","color":"red","bold":false}
execute as @s[tag=!shgRadarCoolDown] if entity @a[distance=1..35] run title @s actionbar {"text":"35m范围存在玩家","color":"red","bold":false}
execute as @s[tag=!shgRadarCoolDown] unless entity @e[type=#shg:radar_object,distance=0.5..35] run title @s actionbar {"text":"35m范围内应该是安全的","color":"green"}
execute as @s[tag=!shgRadarCoolDown] unless entity @e[type=#shg:radar_object,distance=0.5..35] run scoreboard players set @s shgRadarCoolDown 250
title @s[tag=!shgRadarCoolDown] times 0t 10t 5t

execute as @s[tag=shgRadarCoolDown] run playsound minecraft:block.note_block.flute player @a ~ ~ ~ 1 0.4
execute as @s[tag=shgRadarCoolDown] run title @s actionbar {"text":"雷达正在冷却","color":"aqua","bold":false}
tag @s[tag=!shgRadarCoolDown] add shgRadarCoolDown
