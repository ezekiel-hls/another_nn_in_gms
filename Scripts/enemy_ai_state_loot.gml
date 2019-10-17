///enemy_ai_state_loot
/*

*/

energy_consumption = 1;
speed = 0;

//Pre-Action check
    var _inst = instance_nearest(x, y, obj_food);
    if(_inst = noone){
        exit;
    }
    if(distance_to_object(_inst) > loot_radius){
        fitness -= 2;
        exit;
    }

//Do Action 
    if(distance_to_object(_inst)< 4){
        speed = 0;
        with(instance_nearest(x, y, obj_food)){
            instance_destroy();
        }
        //Fitness/Energy
        fitness += 5;
        energy = energy_max;
        
    } else if(distance_to_object(_inst) < loot_radius){
        move_to_nearest(obj_food, move_speed);
        energy_consumption = 2;
    }
