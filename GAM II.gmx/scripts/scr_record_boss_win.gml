///scr_record_boss_win(bossname)

global.progression_current = ""


var rname = room_get_name(room)
var record = ds_map_create();
record[?"event"] = "boss"
record[?"room"] = rname
record[?"source"] = argument0
record[?"time"] = current_time
ds_list_add(global.statistics[?"timeline"],record)

var time = (current_time - global.progression_start) div 1000
ga_addProgressionEvent(GA_PROGRESSIONSTATUS_COMPLETE,"boss",argument0,"",time)

