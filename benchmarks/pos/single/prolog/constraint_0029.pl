solve([h1_i2-H1_i2]) :-

    %% Domain constraints
    fd_set_vector_max(561),

    fd_domain(H1_i2, [3, 426, 547, 561]),

    %% Formula constraints
    H1_i2 #< 8,

    %% Labeling
    fd_labeling([H1_i2], [value_method(random)]).