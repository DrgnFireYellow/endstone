# Give random potions
execute as @a[scores={endstone.data.alchemy.potion_time=100}] run loot give @s loot endstone_alchemy:random_potion
execute as @a[scores={endstone.data.alchemy.potion_time=100}] run scoreboard players reset @s endstone.data.alchemy.potion_time

# Update the random potion timer
scoreboard players add @a[tag=endstone.active.alchemy] endstone.data.alchemy.potion_time 1

# Prevent vanilla background music from playing during match
stopsound @a[tag=endstone.playing.alchemy] music

function endstone:utilities/player_counter {game: alchemy}
function endstone:utilities/match_management {game: alchemy, min_players: 2, start_function: "endstone_alchemy:start_game"}
function endstone:win_conditions/elimination {game: alchemy, end_function: "endstone_alchemy:end_game"}
