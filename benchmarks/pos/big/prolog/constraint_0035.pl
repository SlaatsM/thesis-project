solve([i1-I1, i2-I2]) :-

    %% Domain constraints
    fd_domain(I1, 129, 142),
    fd_domain(I2, 66, 138),

    %% Formula constraints
    I2 #\= I1,

    %% Labeling
    fd_labeling([I1, I2], [value_method(random)]).