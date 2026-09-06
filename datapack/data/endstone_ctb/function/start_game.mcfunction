tag @a[tag=endstone.playing.ctb] add endstone.active.ctb

# Place banners
execute at @n[type=marker,tag=endstone.ctb.purple_banner] run setblock ~ ~ ~ magenta_banner
execute at @n[type=marker,tag=endstone.ctb.yellow_banner] run setblock ~ ~ ~ yellow_banner

# Create teams
team add endstone.ctb.purple Purple
team modify endstone.ctb.purple color light_purple
team add endstone.ctb.yellow Yellow
team modify endstone.ctb.yellow color yellow

# Assign teams
function endstone:teams/split_teams {game: ctb, team_1: yellow, team_2: purple}

# Give items to players
give @a[team=endstone.ctb.yellow] golden_axe[minecraft:can_break={blocks:["magenta_banner"]},unbreakable={},tool={default_mining_speed:100,rules:[]}]
give @a[team=endstone.ctb.purple] golden_axe[minecraft:can_break={blocks:["yellow_banner"]},unbreakable={},tool={default_mining_speed:100,rules:[]}]

# Teleport players to team spawns
tp @a[team=endstone.ctb.yellow] @n[type=marker,tag=endstone.spawnpoint.ctb.yellow]
tp @a[team=endstone.ctb.purple] @n[type=marker,tag=endstone.spawnpoint.ctb.purple]