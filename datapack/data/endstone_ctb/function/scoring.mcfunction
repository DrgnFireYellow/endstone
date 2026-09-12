# Keep players from picking up their own banner
execute as @n[type=marker,tag=endstone.ctb.purple_banner] at @s if items entity @a[team=endstone.ctb.purple,tag=endstone.active.ctb] container.* magenta_banner run function endstone_ctb:place_purple_banner
execute as @n[type=marker,tag=endstone.ctb.yellow_banner] at @s if items entity @a[team=endstone.ctb.yellow,tag=endstone.active.ctb] container.* yellow_banner run function endstone_ctb:place_yellow_banner

# Reset banner if someone dies
execute as @a[tag=endstone.active.ctb,scores={endstone.death=1}] run function endstone_ctb:on_death
scoreboard players reset @a[tag=endstone.active.ctb] endstone.death

# Detect when points are scored
execute as @n[type=marker,tag=endstone.ctb.purple_banner] at @s if items entity @a[team=endstone.ctb.purple,tag=endstone.active.ctb,distance=..5] weapon.mainhand yellow_banner if score $just_scored endstone.data.ctb matches 0 run function endstone_ctb:score_point {team: purple}
execute as @n[type=marker,tag=endstone.ctb.yellow_banner] at @s if items entity @a[team=endstone.ctb.yellow,tag=endstone.active.ctb,distance=..5] weapon.mainhand magenta_banner if score $just_scored endstone.data.ctb matches 0 run function endstone_ctb:score_point {team: yellow}

# Remove teams when they lose
execute if score yellow endstone.scoreboard.ctb matches 3 as @a[team=endstone.ctb.purple] run function endstone_ctb:leave_game
execute if score purple endstone.scoreboard.ctb matches 3 as @a[team=endstone.ctb.yellow] run function endstone_ctb:leave_game

# Make players holding banners glow
execute as @a[team=endstone.ctb.purple,tag=endstone.active.ctb] if items entity @s container.* yellow_banner run effect give @s glowing 1 0 true
execute as @a[team=endstone.ctb.yellow,tag=endstone.active.ctb] if items entity @s container.* magenta_banner run effect give @s glowing 1 0 true
execute as @a[team=endstone.ctb.purple,tag=endstone.active.ctb] if items entity @s weapon.offhand yellow_banner run effect give @s glowing 1 0 true
execute as @a[team=endstone.ctb.yellow,tag=endstone.active.ctb] if items entity @s weapon.offhand magenta_banner run effect give @s glowing 1 0 true