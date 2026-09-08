# Remove players from game when they die
$execute as @a[tag=endstone.playing.$(game),scores={endstone.death=1}] run function endstone:utilities/leave_game {game: $(game)}

# End game when there is only one player left
$execute if score $players endstone.data.$(game) matches 1 as @a[tag=endstone.active.$(game)] run function $(end_function)