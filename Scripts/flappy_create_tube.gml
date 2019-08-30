///flappy_create_tube()
/*

*/

var t = instance_create(tube_spawn_x, irandom_range(64,224), obj_tube_entrance);

//Add the tube to the queue
    if(is_array(tubes)){
        var i = array_length_1d(tubes);
        tubes[i] = t;
    } else {
        tubes[0] = t;
    }
