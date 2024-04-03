execute as @a[scores={shgRadar=1..},nbt={SelectedItem:{tag:{shgRadar:1}}}] at @s run function shg:radar/title
scoreboard players add @a[tag=shgRadarCoolDown] shgRadarCoolDown 1
# 雷达的冷却时间
tag @a[tag=shgRadarCoolDown,scores={shgRadarCoolDown=300..}] remove shgRadarCoolDown
title @a[scores={shgRadarCoolDown=300..}] actionbar {"text":"雷达冷却完成","color":"green","bold":"false"}
scoreboard players set @a[scores={shgRadarCoolDown=300..}] shgRadarCoolDown 0
