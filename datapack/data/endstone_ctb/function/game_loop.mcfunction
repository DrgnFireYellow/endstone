# Make sure scoreboards exist
scoreboard objectives add endstone.data.ctb dummy
scoreboard objectives add endstone.scoreboard.ctb dummy [{text: "Playing ", bold: true}, {text: "CTB", color: aqua, bold: true}]
scoreboard objectives add endstone.respawn_time.ctb dummy
scoreboard players set $just_scored endstone.data.ctb 0

# Configure rules
function endstone:utilities/player_counter {game: ctb}
function endstone:utilities/match_management {game: ctb, min_players: 2, start_function: "endstone_ctb:start_game"}
function endstone:win_conditions/team {game: ctb, team_1: yellow, team_2: purple, end_function: "endstone_ctb:end_game"}

# Check for scoring
execute if entity @a[tag=endstone.active.ctb] run function endstone_ctb:scoring

# Stop vanilla music so custom music can play
stopsound @a[tag=endstone.playing.ctb] music

# Respawning
execute as @a[tag=endstone.active.ctb] run scoreboard players remove @s endstone.respawn_time.ctb 1
execute as @a[tag=endstone.active.ctb,scores={endstone.respawn_time.ctb=0}] run function endstone_ctb:respawn

# Powerups
# Dash
execute as @a[advancements={endstone_ctb:powerups/dash_powerup=true}] at @s run function endstone_ctb:powerups/powerup_dash