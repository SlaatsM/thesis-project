solve([h1_i2-H1_i2]) :-

    %% Domain constraints
    fd_set_vector_max(381),

    fd_domain(H1_i2, [162, 381]),

    %% Formula constraints
    ((((-97 * H1_i2) #> H1_i2 #\/ 96 #=< H1_i2) #/\ (H1_i2 #=< (H1_i2 + H1_i2) #/\ 67 #< H1_i2)) #/\ ((-6 * H1_i2) + (-67 - H1_i2)) #< H1_i2),

    %% Labeling
    fd_labeling([H1_i2], [value_method(random)]).