# Keep track of players in game
$scoreboard players reset $players endstone.data.$(game)
$execute as @a[tag=endstone.playing.$(game)] run scoreboard players add $players endstone.data.$(game) 1