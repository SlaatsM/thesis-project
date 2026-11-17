solve([i1-I1, i2-I2]) :-

    %% Domain constraints
    fd_set_vector_max(911),

    fd_domain(I1, [514, 671, 911]),
    fd_domain(I2, 562, 895),

    %% Formula constraints
    (((((-77 * I2) - I1) #= -15 #\/ I2 #= I1) #/\ 22 #< I2) #/\ (((I1 - I1) #< I1 #/\ (-37 * I2) #=< I2) #/\ (0 * I2) #\= (I2 - -79))),

    %% Labeling
    fd_labeling([I1, I2], [value_method(random)]).