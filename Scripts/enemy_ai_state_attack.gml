///enemy_ai_state_attack()
/*

*/

energy_consumption = 1;
speed = 0;

//Pre-Action check
    var _inst = instance_nearest(x, y, obj_player);
    if(_inst = noone){
        exit;
    }
    if(distance_to_object(_inst) > attack_radius){
        fitness -= 2;
        exit;
    }

//Do Action 

    if(attack_cd_counter <= 0){
        if(distance_to_object(obj_player)< 10){
            speed = 0;
            attack_cd_counter = attack_cd;
            //Fitness
            fitness += 100;
        } else {
            move_to_nearest(obj_player, move_speed);
        }
        fitness += 1;
    } else {
        speed = 0;
        //Fitness
        fitness -= 1;
    }
