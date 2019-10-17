///collision_distance(x1, y1, x2, y2, obj, precision);
/*
    Check for collision - Return the distance of the object
*/

var _x1 = argument0;
var _y1 = argument1;
var _x2 = argument2;
var _y2 = argument3;
var _obj = argument4;
var _prec = argument5;

var _xinc = (_x2-_x1)*(1/_prec);
var _yinc = (_y2-_y1)*(1/_prec);

for(var i=0; i<_prec; i++){
    if(collision_point(_x1,_y1, _obj, false, false)){
        return(i/_prec);
        exit;
    }
    _x1 += _xinc;
    _y1 += _yinc;
}

return(1);
