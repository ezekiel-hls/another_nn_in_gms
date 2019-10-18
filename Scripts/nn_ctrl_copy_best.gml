///nn_ctrl_copy_best(source)
/*
    Copy the previously saved fittest neural net data to a neural net instance
*/

//Save generation we have
    var _source = argument0; //NN Main Controller
    if(instance_exists(_source)){
        weights = _source._weights;
        output_weights = _source._output_weights;
        bias = _source._bias;
        output_bias = _source._output_bias;
        
        //We succeed
        return(1);        
    } else {
        //We failed to copy
        return(-1);
    }
