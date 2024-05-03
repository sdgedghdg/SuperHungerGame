# SYSTEM @e[tag=shgSystem,limit=1]
tag @a[tag=SHG_PLAYER] remove SHG_PLAYER
tag @a add SHG_PLAYER
tag @e[tag=shgSystem,limit=1] add shgGaming
scoreboard objectives setdisplay sidebar shgSS_Info

summon marker 0 255 0 {CustomName:"[{\"text\":\"剩余时间\",\"color\":\"red\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["shgSS_time","shgSS"]}
summon marker 0 255 0 {CustomName:"[{\"text\":\"剩余玩家\",\"color\":\"green\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["shgSS_playerLeft","shgSS"]}
summon marker 0 255 0 {CustomName:"[{\"text\":\"空投补给时间\",\"color\":\"aqua\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["shgSS_airChest","shgSS"]}

scoreboard players set @e[tag=shgSystem,limit=1] shgGameTick 12000