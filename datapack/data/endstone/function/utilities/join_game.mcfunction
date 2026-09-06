$execute if entity @a[tag=endstone.active.$(game)] run tellraw @s {text:"A game is currently running, please wait until it ends.", color:red}
$execute if entity @a[tag=endstone.active.$(game)] run return fail

$scoreboard objectives add endstone.data.$(game) dummy
$tag @s add endstone.playing.$(game)
clear @s
effect clear @s
effect give @s instant_health 1 100
effect give @s saturation 1 100
gamemode adventure @s
$tp @s @n[type=marker,tag=endstone.spawnpoint.$(game)]