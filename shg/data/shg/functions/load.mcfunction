tellraw @a[tag=debug] {"text":"[SHG] 数据包已加载","color":"yellow"}

# 创建变量
scoreboard objectives add shgRadar minecraft.used:minecraft.warped_fungus_on_a_stick "shg雷达监测"
scoreboard objectives add shgRadarCoolDown dummy "shg雷达冷却"
scoreboard objectives add shgGameTick dummy "shg时间/tick"
scoreboard objectives add shgGameSec dummy "shg时间/s"

# sidebar展示计分板
scoreboard objectives add shgSS_Info dummy [{"text":"超级饥饿游戏","color":"red","bold":true}]
scoreboard objectives add 20 dummy "常量20"

# 重置系统并初始化
kill @e[type=marker,tag=shgSystem]
summon minecraft:marker 0 255 0 {Tags:["shgSystem"]}
scoreboard players set @e[tag=shgSystem,limit=1] 20 20

# scoreboard objectives add thisValueIs20 dummy
# scoreboard players add @a thisValueIs20 20

# CustomModelData:
# radar:160
# shotgun8 (not loaded):280
# shotgun8 (loaded):280