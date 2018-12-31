///scr_record_death(killer name)
if global.progression_current != ""
{
    scr_record_boss_loss(global.progression_current)
    global.progression_current = ""
}
show_debug_message("recording death by " + argument0)
var dmap = global.statistics[?"death"];
++dmap[?"total"]
var rname = obj_controller.roomString
var droom = dmap[?"deadliest room"]
if ds_map_exists(dmap,rname)
{
    var deaths = dmap[?rname] + 1;
    dmap[?rname] = deaths
    if deaths > dmap[?droom]
        dmap[?"deadliest room"] = rname
}
else
{
    dmap[?rname] = 1
    if droom = ""
        dmap[?"deadliest room"] = rname
}

rname = room_get_name(room)
var record = ds_map_create();
record[?"event"] = "death"
record[?"room"] = rname
record[?"source"] = argument0
record[?"time"] = current_time
//ds_list_add(global.statistics[?"timeline"],record)

ga_addDesignEvent("death:" + rname + ":" + argument0)
