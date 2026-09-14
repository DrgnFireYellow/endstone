scoreboard objectives add endstone.data.spleef dummy

function endstone:utilities/player_counter {game: spleef}
function endstone:utilities/match_management {game: spleef, min_players: 2, start_function: "endstone_spleef:start_game"}
function endstone:win_conditions/elimination {game: spleef, end_function: "endstone_spleef:end_game"}