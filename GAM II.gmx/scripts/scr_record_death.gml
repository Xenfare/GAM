///scr_record_death(killer name)
if global.progression_current != ""
{
    scr_record_boss_loss(global.progression_current)
    global.progression_current = ""
}
show_debug_message("recording death by " + argument0)
++global.statistics[?"deaths"]
var rname = room_get_name(room)
var record = ds_map_create();
record[?"event"] = "death"
record[?"room"] = rname
record[?"source"] = argument0
record[?"time"] = current_time
//ds_list_add(global.statistics[?"timeline"],record)

addDesignEvent("death:" + rname + ":" + argument0)
