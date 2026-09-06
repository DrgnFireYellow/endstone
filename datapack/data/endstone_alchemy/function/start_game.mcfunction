tag @a[tag=endstone.playing.alchemy] add endstone.active.alchemy
give @a[tag=endstone.active.alchemy] stick[minecraft:item_name={text:"Sorcerer's Staff",color:light_purple},attribute_modifiers=[{type:"attack_speed",slot:"mainhand",amount:-2.5,operation:"add_value",id:"endstone_alchemy:staff_speed"},{type:"attack_damage",slot:"mainhand",amount:2,operation:"add_value",id:"endstone_alchemy:staff_damage"}]]
tp @a[tag=endstone.active.alchemy] @n[type=marker,tag=endstone.spawnpoint.alchemy]
execute as @a[tag=endstone.active.alchemy] at @s run playsound endstone:music.failing_defense record @s ~ ~ ~ 100
title @a[tag=endstone.active.alchemy] title {text:"Fight!",color:red}