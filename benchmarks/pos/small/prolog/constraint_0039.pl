solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(525),

    fd_domain(I1, [376, 525]),

    %% Formula constraints
    I1 #=< (80 * I1),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).