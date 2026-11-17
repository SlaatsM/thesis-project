solve([i1-I1, i2-I2]) :-

    %% Domain constraints
    fd_set_vector_max(912),

    fd_domain(I1, 423, 641),
    fd_domain(I2, [516, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912]),

    %% Formula constraints
    #\ (((-21 #=< (I1 + I1) #\/ I1 #< (-97 * I2)) #/\ (I2 #\= I1 #/\ I1 #>= I1))),

    %% Labeling
    fd_labeling([I1, I2], [value_method(random)]).