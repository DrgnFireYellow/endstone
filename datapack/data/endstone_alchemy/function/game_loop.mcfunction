# Give random potions
execute as @a[scores={endstone_alchemy_potion_time=100}] run loot give @s loot endstone_alchemy:random_potion
execute as @a[scores={endstone_alchemy_potion_time=100}] run scoreboard players reset @s endstone_alchemy_potion_time

# Update the random potion timer
scoreboard players add @a[tag=endstone_alchemy_active] endstone_alchemy_potion_time 1

# Remove players from game when they die
execute as @a[tag=endstone_alchemy_player,scores={endstone_death=1}] run function endstone_alchemy:leave_game

# Create the game data scoreboard if it doesn't exist
scoreboard objectives add endstone_alchemy_data dummy

# Keep track of players in game
scoreboard players reset $players endstone_alchemy_data
execute as @a[tag=endstone_alchemy_player] run scoreboard players add $players endstone_alchemy_data 1

# Start countdown if there are enough players
execute if score $players endstone_alchemy_data matches 1 as @a[tag=endstone_alchemy_player] run title @s actionbar {text:"Waiting for players...",color:"aqua",bold:true}
execute if score $players endstone_alchemy_data matches 1 as @a[tag=endstone_alchemy_player] run effect give @s resistance 1 4 true
execute if score $players endstone_alchemy_data matches 1 run scoreboard players set $countdown_time endstone_alchemy_data 0
execute if score $players endstone_alchemy_data matches 2.. unless score $countdown_time endstone_alchemy_data matches 101.. run function endstone_alchemy:countdown_tick

# End game when there is only one player left
execute if score $players endstone_alchemy_data matches 1 as @a[tag=endstone_alchemy_active] run function endstone_alchemy:end_game