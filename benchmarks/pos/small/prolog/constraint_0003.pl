solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(974),

    fd_domain(I1, [118, 298, 578, 974]),

    %% Formula constraints
    I1 #= I1,

    %% Labeling
    fd_labeling([I1], [value_method(random)]).