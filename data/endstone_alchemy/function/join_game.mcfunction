scoreboard objectives add endstone_alchemy_potion_time dummy
scoreboard players reset @s endstone_alchemy_potion_time
tag @s add endstone_alchemy_player
clear @s
effect clear @s
effect give @s instant_health 1 100
effect give @s saturation 1 100
gamemode adventure @s
tp @s @n[type=marker,tag=endstone_alchemy_spawn]