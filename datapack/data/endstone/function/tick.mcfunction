scoreboard players enable @a leave_game
execute as @a[scores={leave_game=1}] run function endstone:triggers/leave_game

execute if entity @a[tag=endstone.playing.alchemy] run function endstone_alchemy:game_loop
execute if entity @a[tag=endstone.playing.ctb] run function endstone_ctb:game_loop
execute if entity @a[tag=endstone.playing.spleef] run function endstone_spleef:game_loop