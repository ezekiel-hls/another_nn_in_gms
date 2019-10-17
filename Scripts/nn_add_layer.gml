///nn_add_layer(size, func)

//Hidden Layer
    var _size = argument0;
    var _weight;
    
    if(layer_count = 0){
        //Initial Layer 
        for(var i=0; i<_size; i++){    
            neurons[layer_count, i] = 0;
        }
    } else {
        //Succeeding layer
        for(var i=0; i<_size; i++){    
            neurons[layer_count, i] = 0;
            bias[layer_count, i] = 0;
            for(var j=0; j<layer_size[layer_count-1]; j++){
                _weight[i, j] = 0;
            }
            //Store weights and bias
            weights[layer_count] = _weight;
        }
        layer_activation[layer_count] = argument1;
    }
    
//Save size
    layer_size[layer_count] = _size;
    
//Increment size    
    layer_count += 1;
