schedule clear endstone_ctb:play_music
schedule clear endstone_ctb:powerups/itembox/spawn_itemboxes
kill @e[tag=endstone.ctb.itembox]
kill @e[tag=endstone.ctb.itembox_display]
kill @e[type=mannequin,tag=endstone.ctb.petrify_mannequin]
function endstone:utilities/end_game {game: ctb}