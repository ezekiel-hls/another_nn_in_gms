///nn_visual_create(x, y, i_weights, h_weights, o_weights)
/*
    Visualize the neural network
*/

//Create visualization
    var _v = instance_create(argument0, argument1, obj_nn_v_main);
    with(_v){
        i_weight = argument2;    //Arrays
        h_weight = argument3; 
        o_weight = argument4;
        
        event_user(0);
    }
