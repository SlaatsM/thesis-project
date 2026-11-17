solve([i1-I1, i2-I2]) :-

    %% Domain constraints
    fd_set_vector_max(909),

    fd_domain(I1, [33, 192, 809, 909]),
    fd_domain(I2, 372, 850),

    %% Formula constraints
    (((-45 #< -21 #/\ -22 #\= I2) #\/ (42 #< -63 #==> (17 * I1) #= I2)) #/\ I2 #= I1),

    %% Labeling
    fd_labeling([I1, I2], [value_method(random)]).