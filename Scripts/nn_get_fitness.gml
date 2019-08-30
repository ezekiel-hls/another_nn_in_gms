///nn_get_fitness()
/*

*/

//Get fitness
    var t = global.entity_target_object; //Target object

    var diff = 1;
    var dist = -point_distance(x,y,t.x,t.y);
    fitness = diff*dist;
