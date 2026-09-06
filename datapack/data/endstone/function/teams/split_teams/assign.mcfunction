team leave @s

$execute if score $team_split endstone.data.$(game) matches 0 run team join endstone.$(game).$(team_1)
$execute if score $team_split endstone.data.$(game) matches 1 run team join endstone.$(game).$(team_2)

$scoreboard players add $team_split endstone.data.$(game) 1
$execute if score $team_split endstone.data.$(game) matches 2 run scoreboard players set $team_split endstone.data.$(game) 0