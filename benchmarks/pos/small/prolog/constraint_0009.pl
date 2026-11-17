solve([h1_i2-H1_i2]) :-

    %% Domain constraints
    fd_domain(H1_i2, 668, 681),

    %% Formula constraints
    (49 #< (83 * H1_i2) #/\ #\ (-38 #= 3)),

    %% Labeling
    fd_labeling([H1_i2], [value_method(random)]).