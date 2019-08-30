///nn_clear_layer_nodes()
/*

*/

//Destroy nodes
    for(var i=0; i<ds_list_size(hidden_layer)-1; i++){
        if(hidden_layer[| i] != undefined)
            ds_grid_destroy(hidden_layer[| i]);
    }
