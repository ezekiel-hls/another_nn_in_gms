///nn_initialize_nodes(node_count);
/*
    Create nodes - initialize the nodes/neuron of a layer  
    Return layer data
*/

//Create layer
    var _n_count = argument0; //count of nodes
    var _c_count = 1; //count of connection
    var _layer = ds_grid_create(_n_count, _c_count);

//Create nodes 
    for(var i=0; i<_n_count; i++){
        for(var j=0; j<_c_count; j++){
            _layer[# i, j] = 0;
        }
    }
    
    return(_layer);
