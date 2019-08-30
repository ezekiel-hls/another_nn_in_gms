///nn_get_output(node_index)
/*
    Return the value of an output node
*/

//Get output value
    var _ind = argument0;
    if(_ind >= 0 && _ind < array_length_1d(outputs)){
        return(outputs[_ind]);
    } else {
        return(-1); //If we are trying to get from an invalid node index
    }
