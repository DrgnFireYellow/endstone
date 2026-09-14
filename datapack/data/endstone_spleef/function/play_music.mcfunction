# Start music
execute as @a[tag=endstone.active.spleef] at @s run playsound endstone:music.krampus_workshop record @s ~ ~ ~ 100

# Loop
schedule function endstone_spleef:play_music 85s