tellraw @a[tag=debug] {"text":"§e[SHG] 数据包已加载"}
scoreboard objectives add shgRadar minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add shgRadarCoolDown dummy
scoreboard objectives add SHGI_CShotgun08 dummy "手枪子弹填充数0/8"
# scoreboard objectives add thisValueIs20 dummy
# scoreboard players add @a thisValueIs20 20

tag @a add SHG_PLAYER

# CustomModelData:
# radar:160
# shotgun8 (not loaded):280
# shotgun8 (loaded):280