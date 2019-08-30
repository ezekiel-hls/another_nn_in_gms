///nn_mutate_bias()
/*
    Randomly mutate bias
*/

//Mutate neuron bias
    for(var j=0; j<array_height_2d(bias) ; j++){ //Neurons
        for(var k=0; k<array_length_2d(bias, j); k++){ //bias
            bias[j,k] = mutate(bias[j,k], mutation_rate);
        }
    }
    
//Mutate output bias    
    for(var j=0; j<array_height_2d(output_bias) ; j++){ //Neurons
        for(var k=0; k<array_length_2d(output_bias, j); k++){ //bias
            output_bias[j,k] = mutate(output_bias[j,k], mutation_rate);
        }
    }
