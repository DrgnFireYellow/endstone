execute if entity @a[tag=endstone_alchemy_active] run tellraw @s {text:"A game is currently running, please wait until it ends.", color:red}
execute if entity @a[tag=endstone_alchemy_active] run return fail

scoreboard objectives add endstone_alchemy_potion_time dummy
scoreboard players reset @s endstone_alchemy_potion_time
tag @s add endstone_alchemy_player
clear @s
effect clear @s
effect give @s instant_health 1 100
effect give @s saturation 1 100
gamemode adventure @s
tp @s @n[type=marker,tag=endstone_alchemy_spawn]