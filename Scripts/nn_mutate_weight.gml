///nn_mutate_weight()
/*
    Randomly mutate weights
*/

//Mutate neuron weights
    for(var j=0; j<array_height_2d(weights) ; j++){ //Neurons
        for(var k=0; k<array_length_2d(weights, j); k++){ //weights
            weights[j,k] = mutate(weights[j,k], mutation_rate);
        }
    }
    
//Mutate output weights    
    for(var j=0; j<array_height_2d(output_weights) ; j++){ //Neurons
        for(var k=0; k<array_length_2d(output_weights, j); k++){ //Weights            
            output_weights[j,k] = mutate(output_weights[j,k], mutation_rate);
        }
    }
