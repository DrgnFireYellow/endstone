tag @a[tag=endstone_alchemy_player] add endstone_alchemy_active
give @a[tag=endstone_alchemy_active] stick[minecraft:item_name={text:"Sorcerer's Staff",color:light_purple},attribute_modifiers=[{type:"attack_speed",slot:"mainhand",amount:-2.5,operation:"add_value",id:"endstone_alchemy:staff_speed"},{type:"attack_damage",slot:"mainhand",amount:2,operation:"add_value",id:"endstone_alchemy:staff_damage"}]]
tp @a[tag=endstone_alchemy_active] @n[type=marker,tag=endstone_alchemy_spawn]
execute as @a[tag=endstone_alchemy_active] at @s run playsound endstone:music.failing_defense record @s ~ ~ ~ 100
title @a[tag=endstone_alchemy_active] title {text:"Fight!",color:red}