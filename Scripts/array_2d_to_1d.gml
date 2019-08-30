///array_2d_to_1d(array, index);


var _arr = argument0;
var _ind = argument1;
var _new_arr;

for(var i=0; i<array_length_2d(_arr, _ind); i++){
    _new_arr[i] = _arr[_ind, i];
}

return(_new_arr);
