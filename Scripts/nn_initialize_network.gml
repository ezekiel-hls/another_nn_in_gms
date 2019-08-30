///nn_initialize_network()
/*

*/
  
//Initialize hidden layer
    hidden_layer = ds_list_create();
    hidden_layer_w = ds_list_create();
    
    //Input layer    
    hidden_layer[| 0] = nn_initialize_nodes(2);
    
    //First Layer    
    hidden_layer[| 1] = nn_initialize_nodes(4);
    hidden_layer_w[| 1] = nn_initialize_weights(4, 2);

    //Output Layer
    hidden_layer[| 2] = nn_initialize_nodes(2);
    hidden_layer_w[| 2] = nn_initialize_weights(2, 4);
