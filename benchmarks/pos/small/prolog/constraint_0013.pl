solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(967),

    fd_domain(I1, [323, 967]),

    %% Formula constraints
    4 #< I1,

    %% Labeling
    fd_labeling([I1], [value_method(random)]).