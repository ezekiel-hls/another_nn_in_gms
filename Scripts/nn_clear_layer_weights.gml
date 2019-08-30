///nn_clear_layer_weights()
/*

*/
    
//Destroy weights    
    for(var i=0; i<ds_list_size(hidden_layer_w)-1; i++){
        if(hidden_layer_w[| i] != undefined)    
            ds_grid_destroy(hidden_layer_w[| i]);
    }
