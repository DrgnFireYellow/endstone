scoreboard objectives add endstone_death deathCount

execute unless entity @e[type=marker,tag=endstone_lobby] run tellraw @a [{text:"Lobby position is not set. Set it with ", color:red},{text:"/function endstone:set_lobby", color:yellow}]