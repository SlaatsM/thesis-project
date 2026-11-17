solve([a2_0-A2_0, i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(784),

    fd_domain(A2_0, [380, 784]),
    fd_domain(I1, [228, 259, 446]),

    %% Formula constraints
    A2_0 #=< I1,

    %% Labeling
    fd_labeling([A2_0, I1], [value_method(random)]).