solve([a1_0-A1_0]) :-

    %% Domain constraints
    fd_set_vector_max(852),

    fd_domain(A1_0, [747, 852]),

    %% Formula constraints
    A1_0 #\= (64 * A1_0),

    %% Labeling
    fd_labeling([A1_0], [value_method(random)]).