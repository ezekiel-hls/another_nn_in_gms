///nn_randomize_bias()
/*
    Randomize all bias on the hidden layer and ouput layer where each nodes has it own bias

    Required an initialized neural network
    nn_create_network] is needed to be called first before using this function    
*/


var hl = array_height_2d(weights);
var ol = array_height_2d(output_weights);

//Bias for hidden layer
    for(var i=0; i<hl; i++){
        bias[i] = random_range(-1, 1);
    }
    
//Bias for output
    for(var i=0; i<ol; i++){
        output_bias[i] = random_range(-1, 1);
    }    
