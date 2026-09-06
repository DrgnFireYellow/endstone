# ARGUMENTS: game, min_players, start_function

# Store minimum players for comparison
$scoreboard players set $min_players endstone.data.$(game) $(min_players)

# Start countdown if there are enough players
$execute if score $players endstone.data.$(game) < $min_players endstone.data.$(game) as @a[tag=endstone.playing.$(game)] run title @s actionbar {text:"Waiting for players...",color:"aqua",bold:true}
$execute if score $players endstone.data.$(game) < $min_players endstone.data.$(game) as @a[tag=endstone.playing.$(game)] run effect give @s resistance 1 10 true
$execute if score $players endstone.data.$(game) < $min_players endstone.data.$(game) run scoreboard players set $countdown_time endstone.data.$(game) 0
$execute if score $players endstone.data.$(game) matches $(min_players).. unless score $countdown_time endstone.data.$(game) matches 101.. run function endstone:tick/countdown {game: $(game), start_function: "$(start_function)"}