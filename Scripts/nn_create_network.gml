///nn_create_network(il, hl, ol)
/*
    Initialize the neural network
*/

var il = argument0; //How many input nodes
var hl = argument1; //How many hidden layer nodes
var ol = argument2; //How many output layer nodes
    
//Input Layer
    for(var i=0; i<il; i++){
        inputs[i] = 0;
    }
    
//Hidden Layer    
    for(var i=0; i<hl; i++){    
        neurons[i] = 0;
        bias[i] = 0;
        for(var j=0; j<il; j++){ weights[i, j] = 0; }
    }
    
//Output Layer    
    for(var i=0; i<ol; i++){
        outputs[i] = 0;
        output_bias[i] = 0;
        for(var j=0; j<hl; j++){ output_weights[i, j] = 0; }
    }
    

