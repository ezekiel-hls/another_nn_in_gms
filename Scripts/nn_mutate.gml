///nn_mutate(weights)
/*  
    param(ds_list)
*/

var _weight_list = argument0;

//Mutate weights
    for(var i=1; i < ds_list_size(_weight_list)-1; i++){//Layers
        //Weight grid
        var _w_grid = _weight_list[| i];      
        
        for(var j=0; j<ds_grid_width(_w_grid) ; j++){ //Neurons
            for(var k=0; k<ds_grid_height(_w_grid); k++){ //weights
                var _chance = irandom(100);
                var _weight = _w_grid[# j,k];
                
                if(_chance < 2){
                    _weight *= -1; //flip sign
                } else if(_chance < 4){
                    _weight = random_range(-1, 1); //reroll
                } else if(_chance < 6){
                    _weight *= random_range(0, 1)+1; //Increase(0% to 100%)
                } else if(_chance < 8){
                    _weight *= random_range(0, 1); //Decrease(0% to 100%)
                }
                _w_grid[# j,k] = _weight;
            }
        }
    }
