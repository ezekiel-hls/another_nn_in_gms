///nn_ctrl_save_best(entity)
/*
    Save the fittest neural net data of a neural net instance
*/

//Save generation we have
    var _inst = argument0; //NN Instance
    if(instance_exists(_inst)){
        _weights = -1;
        _output_weights = -1;
        _bias = -1;
        _output_bias = -1;
        
        _weights = _inst.weights;
        _output_weights = _inst.output_weights;
        _bias = _inst.bias;
        _output_bias = _inst.output_bias;
        
        //We succeed
        return(1);        
    } else {
        //We failed to copy
        return(-1);
    }
