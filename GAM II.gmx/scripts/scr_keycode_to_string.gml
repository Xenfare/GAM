///scr_keycode_to_string(keycode)
if((argument0>=48 && argument0<=57) || (argument0>=65 && argument0<=90))
    return chr(argument0);

switch(argument0)
{
    case 3:
        return "Scroll Lock";
    case 8:
        return "Backspace";
    case 9:
        return "Tab";
    case 19:
        return "Pause";
    case 20:
        return "Caps Lock";
    case 32:
        return "Spacebar";
    case 33:
        return "Page Up";
    case 34:
        return "Page Down";
    case 35:
        return "End";
    case 36:
        return "Home";
    case 38:
        return "Up Arrow";
    case 40:
        return "Down Arrow";
    case 37:
        return "Left Arrow";
    case 39:
        return "Right Arrow";
    case 45:
        return "Insert";  
    case 46:
        return "Delete";  
    case 96:
        return "Numpad 0";
    case 97:
        return "Numpad 1";
    case 98:
        return "Numpad 2";
    case 99:
        return "Numpad 3";
    case 100:
        return "Numpad 4";
    case 101:
        return "Numpad 5";
    case 102:
        return "Numpad 6";
    case 103:
        return "Numpad 7";
    case 104:
        return "Numpad 8";
    case 105:
        return "Numpad 9";
    case 106:
        return "Numpad *";
    case 107:
        return "Numpad +";
    case 109:
        return "Numpad -";
    case 110:
        return "Numpad .";
    case 111:
        return "Numpad /";
    case 112:
        return "F1";
    case 113:
        return "F2";
    case 114:
        return "F3";
    case 115:
        return "F4";
    case 116:
        return "F5";
    case 117:
        return "F6";
    case 118:
        return "F7";
    case 119:
        return "F8";
    case 120:
        return "F9";
    case 121:
        return "F10";
    case 122:
        return "F11";
    case 123:
        return "F12";
    case 144:
        return "Num Lock";
    case 145:
        return "Break";
    case 160:
        return "Left Shift";
    case 161:
        return "Right Shift";
    case 162:
        return "Left Control";
    case 163:
        return "Right Control";
    case 164:
        return "Left Alt";
    case 165:
        return "Right Alt";
    case 186:
        return ";";
    case 187:
        return "=";
    case 188:
        return ",";
    case 189:
        return "-";
    case 190:
        return ".";
    case 191:
        return "/";
    case 192:
        return "`";
    case 219:
        return "[";
    case 220:
        return "\";
    case 221:
        return "R]";
    case 222:
        return "R'";
    default:
        return "??";
}
