///scr_time_to_string(time)
var time = argument0 div 1000
var hours = time div 3600
var minutes = (time mod 3600) div 60
var seconds = time mod 60
var str = "" 
if hours > 0
    str = string(hours) + " H "
if minutes > 0
    str = str + string(minutes) + " M " 
if seconds > 0
    str = str + string(seconds) + " S "
return str

