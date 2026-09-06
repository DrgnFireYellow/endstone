$scoreboard players reset $countdown_time endstone.data.$(game)
stopsound @s record
playsound entity.player.levelup master @s ~ ~ ~ 100
title @s title {text:"VICTORY",color:"green"}
$tellraw @a [{selector:"@s",color:gold},{text:" won a game of ",color:blue},{text:"$(game)",color:aqua}]
$function endstone:utilities/leave_game {game: $(game)}