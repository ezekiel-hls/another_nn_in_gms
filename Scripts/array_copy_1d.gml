///array_copy_1d(src, des)

    var _src_arr = argument0;
    var _des_arr = argument1;
    var _size = array_length_1d(_src_arr);
    
    for(var i=0; i<_size; i++){
        _des_arr[i] = _src_arr[i];
    }
