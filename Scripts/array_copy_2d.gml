///array_copy_2d(src, des);
    
    var _src_arr = argument0;
    var _des_arr = argument1;
    var _size_h = array_height_2d(_src_arr);
    var _size_l;
    
    for(var j=0; j<_size_h; j++){
        _size_l = array_length_2d(_src_arr, j);
        for(var k=0; k<_size_l; k++){
            _des_arr[j, k] = _src_arr[j, k];
        }
    }
