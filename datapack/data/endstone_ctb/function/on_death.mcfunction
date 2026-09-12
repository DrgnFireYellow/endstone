execute if items entity @s container.* magenta_banner run function endstone_ctb:place_purple_banner
execute if items entity @s container.* yellow_banner run function endstone_ctb:place_yellow_banner

execute if items entity @s weapon.offhand magenta_banner run function endstone_ctb:place_purple_banner
execute if items entity @s weapon.offhand yellow_banner run function endstone_ctb:place_yellow_banner

gamemode spectator @s
scoreboard players set @s endstone.respawn_time.ctb 100
tellraw @s {text: "You will respawn in 5 seconds", color: gold}