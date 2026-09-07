# Start music
execute as @a[tag=endstone.active.ctb] at @s run playsound endstone:music.five_armies record @s ~ ~ ~ 100

# Loop
schedule function endstone_ctb:play_music 151s