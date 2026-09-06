# ARGUMENTS: game, team_1, team_2

# Create teams if they don't exist
$team add endstone.$(game).$(team_1) $(team_1)
$team add endstone.$(game).$(team_2) $(team_2)

$scoreboard players set $team_split endstone.data.$(game) 0

$execute as @a[tag=endstone.playing.$(game),sort=random] run function endstone:teams/split_teams/assign {game: $(game), team_1: $(team_1), team_2: $(team_2)}