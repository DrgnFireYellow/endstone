scoreboard players reset $countdown_time endstone_alchemy_data
execute as @a[tag=endstone_alchemy_active] at @s run playsound entity.player.levelup master @s ~ ~ ~ 100
title @s title {text:"VICTORY",color:"green"}
tellraw @a [{selector:"@a[tag=endstone_alchemy_active]",color:gold},{text:" won a game of Alchemy!",color:"blue"}]
function endstone_alchemy:leave_game