tag @a[tag=endstone.playing.ctb] add endstone.active.ctb

# Place banners
function endstone_ctb:place_purple_banner
function endstone_ctb:place_yellow_banner

# Create teams
team add endstone.ctb.purple Purple
team modify endstone.ctb.purple color light_purple
team modify endstone.ctb.purple friendlyFire false
team add endstone.ctb.yellow Yellow
team modify endstone.ctb.yellow color yellow
team modify endstone.ctb.yellow friendlyFire false

# Assign teams
function endstone:teams/split_teams {game: ctb, team_1: yellow, team_2: purple}

# Give items to players
give @a[team=endstone.ctb.yellow] golden_axe[minecraft:can_break={blocks:["magenta_banner"]},unbreakable={},tool={default_mining_speed:100,rules:[]}]
give @a[team=endstone.ctb.purple] golden_axe[minecraft:can_break={blocks:["yellow_banner"]},unbreakable={},tool={default_mining_speed:100,rules:[]}]

give @a[tag=endstone.active.ctb] bow
give @a[tag=endstone.active.ctb] arrow 24

# give @a[team=endstone.ctb.yellow] minecraft:yellow_wool[can_place_on={blocks:[yellow_wool,magenta_wool,grass_block]}] 24
# give @a[team=endstone.ctb.purple] minecraft:magenta_wool[can_place_on={blocks:[magenta_wool,yellow_wool,grass_block]}] 24

# Set spawnpoints
execute as @a[team=endstone.ctb.yellow] at @n[type=marker,tag=endstone.spawnpoint.ctb.yellow] run spawnpoint @s ~ ~ ~
execute as @a[team=endstone.ctb.purple] at @n[type=marker,tag=endstone.spawnpoint.ctb.purple] run spawnpoint @s ~ ~ ~

# Teleport players to team spawns
tp @a[team=endstone.ctb.yellow] @n[type=marker,tag=endstone.spawnpoint.ctb.yellow]
tp @a[team=endstone.ctb.purple] @n[type=marker,tag=endstone.spawnpoint.ctb.purple]

# Configure scoreboard
scoreboard players set purple endstone.scoreboard.ctb 0
scoreboard players display name purple endstone.scoreboard.ctb {text: "Purple", color: light_purple}
scoreboard players set yellow endstone.scoreboard.ctb 0
scoreboard players display name yellow endstone.scoreboard.ctb {text: "Yellow", color: yellow}

scoreboard objectives setdisplay sidebar.team.light_purple endstone.scoreboard.ctb
scoreboard objectives setdisplay sidebar.team.yellow endstone.scoreboard.ctb

# Start music
execute as @a[tag=endstone.active.ctb] at @s run playsound endstone:music.five_armies record @s ~ ~ ~ 100