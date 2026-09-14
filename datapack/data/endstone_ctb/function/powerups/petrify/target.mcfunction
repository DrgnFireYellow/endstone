summon mannequin ~ ~ ~ {Invulnerable:true,immovable:true,Tags:[endstone.ctb.petrify_mannequin],profile:{properties:[{name:"textures",value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTJjNzQxYmFiYjMxYzE4Y2JiYzgwYTc3ZGM4OWZhM2RmZjUwYjZhYmU1ZTllNjczY2IyZTQ2N2YwNDhiNDA4MCJ9fX0="}]}}
data modify entity @n[type=mannequin,tag=endstone.ctb.petrify_mannequin] Rotation set from entity @s Rotation
gamerule show_death_messages false
tellraw @a ["",{"selector":"@s"}," was turned to stone"]
kill @s
gamerule show_death_messages true