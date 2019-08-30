///nn_initialize_weights(node_count, prev_node_count);
/*
    Create nodes - initialize weights  
    Return layer data
*/

//Create layer
    var _n_count = argument0; //count of nodes
    var _c_count = argument1; //count of connection
    var _layer = ds_grid_create(_n_count, _c_count);

//Create nodes - initialize weights  
    for(var i=0; i<_n_count; i++){
        for(var j=0; j<_c_count; j++){
            _layer[# i, j] = random_range(-0.5,0.5); //[i, j] i=node, j=weight for each prev layer's node
        }
    }
    
    return(_layer);
