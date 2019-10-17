///nn_random_b()
 
//Hidden Layer
    if(layer_count > 1){
        for(var i=1; i<layer_count; i++){ //Layer
            //Each nodes in a layer
            for(var j=0; j<layer_size[i]; j++){
                bias[i, j] = random_range(-5, 5);
            }
        }
    }
