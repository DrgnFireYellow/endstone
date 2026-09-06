$tag @s remove endstone.playing.$(game)
$tag @s remove endstone.active.$(game)
clear @s
effect clear @s
scoreboard players reset @s endstone.death
tp @s @n[type=marker,tag=endstone.lobby]
stopsound @s record