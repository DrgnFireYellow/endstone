tag @a[tag=endstone.playing.spleef] add endstone.active.spleef

execute at @n[type=marker,tag=endstone.spleef.arena_location] run place template endstone_spleef:arena

give @a[tag=endstone.active.spleef] diamond_shovel[can_break={blocks:["snow_block"]}]
tp @a[tag=endstone.active.spleef] @n[type=marker,tag=endstone.spleef.center]
execute at @n[type=marker,tag=endstone.spleef.center] run spreadplayers ~ ~ 5 5 false @a[tag=endstone.active.spleef]

function endstone_spleef:play_music