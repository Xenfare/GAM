///scr_time_to_string(time)
var time = argument0 div 1000
var hours = time div 3600
var minutes = (time mod 3600) div 60
var seconds = time mod 60
var str = "" 
if hours > 0
    str = string(hours) + ":"
if minutes > 0
{
    if minutes < 10
        str = str + "0"
    str = str + string(minutes) + ":" 
}else if hours
{
    str = str + "00:"
}
if seconds > 0
{
    if seconds < 10
        str = str + "0"
    str = str + string(seconds)
}else if hours || minutes
{
    str = str + "00"
}
return str

