solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(912),

    fd_domain(I1, [25, 57, 912]),

    %% Formula constraints
    I1 #=< 29,

    %% Labeling
    fd_labeling([I1], [value_method(random)]).