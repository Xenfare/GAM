///scr_record_death(killer name)
/*

var dmap = global.statistics[?"death"];
++dmap[?"total"]
//show_debug_message("recording death by " + argument0)

if global.progression_current != ""
{
    var dboss = dmap[?"deadliest boss"]
    if ds_map_exists(dmap,global.progression_current )
    {
        var deaths = dmap[?global.progression_current ] + 1;
        dmap[?global.progression_current ] = deaths
        if deaths > dmap[?dboss]
            dmap[?"deadliest boss"] = global.progression_current 
    }
    else
    {
        dmap[?global.progression_current ] = 1
        if dboss = ""
            dmap[?"deadliest boss"] = global.progression_current 
    }
    scr_record_boss_loss(global.progression_current)
    global.progression_current = ""
}
else
{
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
}

rname = room_get_name(room)
var record = ds_map_create();
record[?"event"] = "death"
record[?"room"] = rname
record[?"source"] = argument0
record[?"time"] = current_time - global.game_start
//ds_list_add(global.statistics[?"timeline"],record)

ga_addDesignEvent("death:" + rname + ":" + argument0)
