///scr_record_misc_event(category, name)

var rname = room_get_name(room)
var record = ds_map_create();
record[?"event"] = argument0
record[?"room"] = rname
record[?"source"] = argument1
record[?"time"] = current_time
ds_list_add(global.statistics[?"timeline"],record)

ga_addDesignEvent(argument0 + ":" + argument1,current_time div 1000)
