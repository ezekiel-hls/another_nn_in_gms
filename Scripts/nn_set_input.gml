///nn_set_input(node_index, value, min_vale, max_value)
/*
    Insert a value to a neuron
    node_index - index of the node
    value - the value we are placing
    min_value - lowest possible value
    max_value - highest possible value
*/

//Set intput node value
    var _ind = argument0;
    if(_ind > 0 && _ind < array_length_1d(inputs)-1){
        inputs[_ind] = normalize(argument1, argument2, argument3);
    } else {
        return(-1); //If we are trying to set invalid node index
    }

