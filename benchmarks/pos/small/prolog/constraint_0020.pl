solve([i1-I1, i2-I2]) :-

    %% Domain constraints
    fd_set_vector_max(720),

    fd_domain(I1, [480, 599, 608]),
    fd_domain(I2, [183, 242, 262, 638, 720]),

    %% Formula constraints
    ((11 #>= I1 #/\ (58 #< (57 * I1) #/\ I1 #< (59 * I1))) #\/ (#\ (I2 #= 42) #==> #\ ((36 + I1) #= I2))),

    %% Labeling
    fd_labeling([I1, I2], [value_method(random)]).