///nn_random_weight()
/*
    Randomize all weights on the hidden layer and ouput layer

    Required an initialized neural network
    nn_create_network] is needed to be called first before using this function    
*/

var il = array_length_1d(inputs);
var hl = array_height_2d(weights);
var ol = array_height_2d(output_weights);

//Initialize hidden layer
    for(var i=0; i<hl; i++){       
        //Weights
        for(var j=0; j<il; j++){
            weights[i, j] = random_range(-1.0, 1.0);
        }
    }
    
//Weights for output
    for(var i=0; i<ol; i++){       
        for(var j=0; j<hl; j++){
            output_weights[i, j] = random_range(-1.0, 1.0);
        }
    }    
