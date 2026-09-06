# Make sure scoreboards exist
scoreboard objectives add endstone.data.ctb dummy
scoreboard objectives add endstone.scoreboard.ctb dummy [{text: "Playing ", bold: true}, {text: "CTB", color: aqua, bold: true}]
scoreboard players set $just_scored endstone.data.ctb 0

function endstone:utilities/player_counter {game: ctb}
function endstone:utilities/match_management {game: ctb, min_players: 2, start_function: "endstone_ctb:start_game"}
function endstone:win_conditions/team {game: ctb, team_1: yellow, team_2: purple}

execute if entity @a[tag=endstone.active.ctb] run function endstone_ctb:scoring