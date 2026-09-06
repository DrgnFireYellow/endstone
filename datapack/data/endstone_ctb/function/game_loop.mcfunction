# Make sure scoreboards exist
scoreboard objectives add endstone.data.ctb dummy
scoreboard objectives add endstone.scoreboard.ctb dummy

function endstone:utilities/player_counter {game: ctb}
function endstone:utilities/match_management {game: ctb, min_players: 2, start_function: "endstone_ctb:start_game"}
function endstone:win_conditions/elimination {game: ctb}