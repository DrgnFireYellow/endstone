scoreboard objectives add endstone.death deathCount

execute unless entity @e[type=marker,tag=endstone.lobby] run tellraw @a [{text:"Lobby position is not set. Set it in the configuration menu. ", color:red}, {text:"/function endstone:open_config",color:yellow}]