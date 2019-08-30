///nn_copy_network_weight(source, target)
/*
    param(ds_list, ds_list)
*/

var _source = argument0;
var _target = argument1;

//Copy ds grids
    for(var i=0; i<ds_list_size(_target)-1; i++){
        ds_grid_clear(_target[| i], 0);
        ds_grid_copy(_target[| i], _source[| i]);
    }
