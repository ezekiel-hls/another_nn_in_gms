///nn_ctrl_copy_best(src, dest)
/*
    Copy the previously saved fittest neural net data to a neural net instance
*/

//Save generation we have
    var _source = argument0; //NN Instance
    var _destination = argument1;
    if(instance_exists(_source)){
        with(_destination){
            weights         = _source.best_weights;  
            output_weights  = _source.best_o_weights;
            bias            = _source.best_bias;
            output_bias     = _source.best_o_bias;
        }
        
        //We succeed
        return(1);        
    } else {
        //We failed to copy
        return(-1);
    }
