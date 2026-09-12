tp @s[team=endstone.ctb.purple] @n[type=marker,tag=endstone.spawnpoint.ctb.purple]
tp @s[team=endstone.ctb.yellow] @n[type=marker,tag=endstone.spawnpoint.ctb.yellow]
gamemode adventure
rotate @s[team=endstone.ctb.yellow] facing entity @e[type=marker,tag=endstone.spawnpoint.ctb.purple,limit=1]
rotate @s[team=endstone.ctb.purple] facing entity @e[type=marker,tag=endstone.spawnpoint.ctb.yellow,limit=1]