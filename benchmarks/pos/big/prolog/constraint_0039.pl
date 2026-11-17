solve([a3_0-A3_0, a3_1-A3_1, a3_2-A3_2, a3_3-A3_3, a3_4-A3_4, i1-I1, i2-I2]) :-

    %% Domain constraints
    fd_set_vector_max(590),

    fd_domain(A3_0, [222, 269, 483, 590]),
    fd_domain(A3_1, [222, 269, 483, 590]),
    fd_domain(A3_2, [222, 269, 483, 590]),
    fd_domain(A3_3, [222, 269, 483, 590]),
    fd_domain(A3_4, [222, 269, 483, 590]),
    fd_domain(I1, 201, 294),
    fd_domain(I2, 140, 320),

    %% Formula constraints
    I2 #>= A3_2,

    %% Labeling
    fd_labeling([A3_0, A3_1, A3_2, A3_3, A3_4, I1, I2], [value_method(random)]).