solve([i1-I1, i2-I2, i3-I3]) :-

    %% Domain constraints
    fd_set_vector_max(567),

    fd_domain(I1, [26, 145, 567]),
    fd_domain(I2, [189, 465]),
    fd_domain(I3, 87, 289),

    %% Formula constraints
    #\ ((-50 #< 37 #/\ I3 #\= (I2 + (I1 + -24)))),

    %% Labeling
    fd_labeling([I1, I2, I3], [value_method(random)]).