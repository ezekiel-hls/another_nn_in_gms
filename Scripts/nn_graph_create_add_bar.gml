///nn_graph_create_add_bar(graph, value)
/*
    Add new bar to a graph
*/

//Add new bar
    var _graph = argument0;
    if(_graph.object_index == obj_graph_v_main){
        with(_graph){
            bar_new_value = argument1;
            event_user(0);
        }
    }
