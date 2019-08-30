///nn_graph_create(x, y, spacing, min_val, max_val);
/*
    Create a graph
*/

//Initialize graph
    var _ins = instance_create(0, 0, obj_graph_v_main);
    with(_ins){
        start_x = argument0;
        start_y = argument1;
        spacing_x = argument2;
        
        min_value = argument3;        
        max_value = argument4;
    }
    return(_ins);
