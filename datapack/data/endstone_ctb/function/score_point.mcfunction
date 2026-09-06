# Prevent both scoring checks from awarding a point during the same tick.
scoreboard players set $just_scored endstone.data.ctb 1

clear @a[tag=endstone.active.ctb] magenta_banner
clear @a[tag=endstone.active.ctb] yellow_banner

$scoreboard players add $(team) endstone.scoreboard.ctb 1
execute as @a[tag=endstone.active.ctb] at @s run playsound block.note_block.chime master @s ~ ~ ~ 100
function endstone_ctb:place_purple_banner
function endstone_ctb:place_yellow_banner

tp @a[team=endstone.ctb.purple] @n[type=marker,tag=endstone.spawnpoint.ctb.purple]
tp @a[team=endstone.ctb.yellow] @n[type=marker,tag=endstone.spawnpoint.ctb.yellow]