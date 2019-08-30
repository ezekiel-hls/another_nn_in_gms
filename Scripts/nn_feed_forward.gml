 ///nn_feed_forward()
    
//Hidden Layer
    for(var i=0; i<array_length_1d(neurons); i++){
        neurons[i] = bias[i];
        
        for(var j=0; j<array_length_1d(inputs); j++){
            neurons[i] += inputs[j]*weights[i, j];
        }
        
        //Activation function
        neurons[i] = script_execute(activation_function, neurons[i]);
    }

//Output Node    
    for(var i=0; i<array_length_1d(outputs); i++){
        outputs[i] = output_bias[i];
        
        for(var j=0; j<array_length_1d(neurons); j++){
            outputs[i] += neurons[j]*output_weights[i, j];
        }
        
        //Activation function
        outputs[i] = script_execute(activation_function, outputs[i]);
    }
