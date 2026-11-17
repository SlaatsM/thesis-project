solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(876),

    fd_domain(I1, [527, 649, 876]),

    %% Formula constraints
    I1 #> 11,

    %% Labeling
    fd_labeling([I1], [value_method(random)]).