///nn_ctrl_save_best(src, dest)
/*
    Save the fittest neural net data of a neural net instance
*/

//Save generation we have
    var _source = argument0; //NN Instance
    var _destination = argument1;
    if(instance_exists(_source)){
        with(_destination){
            best_weights = _source.weights;
            best_bias = _source.bias;
            best_o_weights = _source.output_weights;
            best_o_bias = _source.output_bias;
        }
        
        //We succeed
        return(1);        
    } else {
        //We failed to copy
        return(-1);
    }
