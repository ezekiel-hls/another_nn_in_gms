///nn_copy(src, dest)
/*
    Copy the previously saved fittest neural net data to a neural net instance
*/

//Save generation we have
    var _source = argument0; //NN Instance
    var _destination = argument1;
    if(instance_exists(_source)){
        with(_destination){
            array_copy_1d(_source.layer_count, layer_count);
            array_copy_1d(_source.layer_activation, layer_activation);
            array_copy_1d(_source.layer_size, layer_size);            
            for(var i=0; i<array_length_1d(_source.weights); i++){
                array_copy_2d(_source.weights[i], weights[i]);
            }
            array_copy_1d(_source.bias, bias);
        }
        
        //We succeed
        return(1);        
    } else {
        //We failed to copy
        return(-1);
    }
