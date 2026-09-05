scoreboard players add $countdown_time endstone_alchemy_data 0

# 5 seconds
execute if score $countdown_time endstone_alchemy_data matches 0 run tellraw @a[tag=endstone_alchemy_player] {text:"Game starting in 5 seconds...",color:gold}
execute if score $countdown_time endstone_alchemy_data matches 0 run function endstone_alchemy:play_countdown_sound

# 4 seconds
execute if score $countdown_time endstone_alchemy_data matches 20 run tellraw @a[tag=endstone_alchemy_player] {text:"Game starting in 4 seconds...",color:gold}
execute if score $countdown_time endstone_alchemy_data matches 20 run function endstone_alchemy:play_countdown_sound

# 3 seconds
execute if score $countdown_time endstone_alchemy_data matches 40 run tellraw @a[tag=endstone_alchemy_player] {text:"Game starting in 3 seconds...",color:gold}
execute if score $countdown_time endstone_alchemy_data matches 40 run function endstone_alchemy:play_countdown_sound

# 2 seconds
execute if score $countdown_time endstone_alchemy_data matches 60 run tellraw @a[tag=endstone_alchemy_player] {text:"Game starting in 2 seconds...",color:gold}
execute if score $countdown_time endstone_alchemy_data matches 60 run function endstone_alchemy:play_countdown_sound

# 1 second
execute if score $countdown_time endstone_alchemy_data matches 80 run tellraw @a[tag=endstone_alchemy_player] {text:"Game starting in 1 second...",color:gold}
execute if score $countdown_time endstone_alchemy_data matches 80 run function endstone_alchemy:play_countdown_sound

execute if score $countdown_time endstone_alchemy_data matches 100 run function endstone_alchemy:start_game

scoreboard players add $countdown_time endstone_alchemy_data 1 