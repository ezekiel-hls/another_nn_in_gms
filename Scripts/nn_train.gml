///nn_train(input,answer)

    nn_feed_forward(argument0);
    
//Calculate output error
    for(var i=0; i<array_length_1d(on); i++){
            eo[i] = argument1 - on[i];
    }

//Calculate hidden error
    for(var i=0; i<array_length_1d(on); i++){
        for(var p=0; p<array_length_1d(hn); p++){
            eh[p] += won[p,i] * eo[i];
        }
    }

//Re-adjust output weights based upon the output error
    for(var i=0; i<array_length_1d(hn); i++){
        for(var p=0; p<array_length_1d(on); p++){
            won[i,p] += lr*eo[p]*(on[p]*(1-on[p]))*hn[i];
        }
    }

//re-adjust input weights based upon the input error
for(var i=0;i<array_length_1d(argument0);i++){
    for(var p=0;p<array_length_1d(hn);p++){
        win[p,i]+=lr*eh[p]*(hn[p]*(1-hn[p]))*argument0[i]
    }
}
