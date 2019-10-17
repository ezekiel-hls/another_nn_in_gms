///nn_ff()
 
var _input;
var _size;
var _weights;
    
//Hidden Layer
    if(layer_count > 1){
        for(var i=1; i<layer_count; i++){ //Layer
            _size = layer_size[i-1];
            _weights = weights[i];
            
            //Each nodes in a layer
            for(var j=0; j<array_length_2d(neurons, i); j++){
                neurons[i, j] = bias[i, j];
                for(var k=0; k<_size; k++){
                    neurons[i, j] += neurons[i-1, k]*_weights[j, k];
                    //show_debug_message(string(_weights[j, k])+"*"+string(neurons[i-1, k])+"+"+string(bias[i, j]));
                }
                //Activation function
                //show_debug_message("="+string(neurons[i, j]));
                neurons[i, j] = script_execute(layer_activation[i], neurons[i, j]);
                //show_debug_message("="+string(neurons[i, j]));
            }
        }
    }
