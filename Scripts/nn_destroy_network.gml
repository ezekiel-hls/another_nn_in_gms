///nn_destroy_network
/*

*/

//Clear nodes first
    nn_clear_layer_nodes();

//Destroy grids after
    ds_list_destroy(hidden_layer);    
    ds_list_destroy(hidden_layer_w);
