///nn_initialize(act_func, mutate_rate)
/*
    Initialize all the variables the neural network will use
    The value set are just the default values
    act_func - activation to use on feedforward
    mutate_rate - percent mutation rate
*/

//Properties
    activation_function = argument0;   //activation function we will use
    //Hidden Layer
    mutation_rate = argument1;            //how much (chances) we will mutate the weights
    
//Vars    
    fitness = 0;
    stop = false;
