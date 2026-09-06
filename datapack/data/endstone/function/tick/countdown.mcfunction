$scoreboard players add $countdown_time endstone.data.$(game) 0

# 5 seconds
$execute if score $countdown_time endstone.data.$(game) matches 0 run tellraw @a[tag=endstone.playing.$(game)] {text:"Game starting in 5 seconds...",color:gold}
$execute if score $countdown_time endstone.data.$(game) matches 0 as @a[tag=endstone.playing.$(game)] at @s run function endstone:sound/countdown

# 4 seconds
$execute if score $countdown_time endstone.data.$(game) matches 20 run tellraw @a[tag=endstone.playing.$(game)] {text:"Game starting in 4 seconds...",color:gold}
$execute if score $countdown_time endstone.data.$(game) matches 20 as @a[tag=endstone.playing.$(game)] at @s run function endstone:sound/countdown

# 3 seconds
$execute if score $countdown_time endstone.data.$(game) matches 40 run tellraw @a[tag=endstone.playing.$(game)] {text:"Game starting in 3 seconds...",color:gold}
$execute if score $countdown_time endstone.data.$(game) matches 40 as @a[tag=endstone.playing.$(game)] at @s run function endstone:sound/countdown

# 2 seconds
$execute if score $countdown_time endstone.data.$(game) matches 60 run tellraw @a[tag=endstone.playing.$(game)] {text:"Game starting in 2 seconds...",color:gold}
$execute if score $countdown_time endstone.data.$(game) matches 60 as @a[tag=endstone.playing.$(game)] at @s run function endstone:sound/countdown

# 1 second
$execute if score $countdown_time endstone.data.$(game) matches 80 run tellraw @a[tag=endstone.playing.$(game)] {text:"Game starting in 1 second...",color:gold}
$execute if score $countdown_time endstone.data.$(game) matches 80 as @a[tag=endstone.playing.$(game)] at @s run function endstone:sound/countdown
$execute if score $countdown_time endstone.data.$(game) matches 100 run function $(start_function)

$scoreboard players add $countdown_time endstone.data.$(game) 1 