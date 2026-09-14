kill @e[tag=endstone.ctb.itembox]
kill @e[tag=endstone.ctb.itembox_display]
execute as @e[type=marker,tag=endstone.ctb.itembox_spawnpoint] at @s run function endstone_ctb:powerups/itembox/place_itembox
schedule function endstone_ctb:powerups/itembox/spawn_itemboxes 60s