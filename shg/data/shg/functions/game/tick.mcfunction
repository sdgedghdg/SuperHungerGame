scoreboard players remove @e[tag=shgSystem,limit=1] shgGameTick 1
execute as @e[tag=shgSystem,limit=1] run scoreboard players operation @s shgGameSec = @s shgGameTick
execute as @e[tag=shgSystem,limit=1] run scoreboard players operation @s shgGameSec /= @s 20
execute as @e[tag=shgSystem,limit=1] run scoreboard players operation @e[tag=shgSS_time,limit=1] shgSS_Info = @s shgGameSec
