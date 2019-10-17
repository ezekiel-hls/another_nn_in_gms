///move_to_nearest(obj, sp);
/*
    Set speed and direction to nearest instance of the object
*/

var _obj = argument0;
var _spd = argument1;
var _inst = instance_nearest(x, y, _obj);

if(_inst != noone){
    var _x = _inst.x;
    var _y = _inst.y;
    move_towards_point(_x, _y, _spd);
} else {
    speed = 0;
}
