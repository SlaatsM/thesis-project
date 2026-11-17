solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(666),

    fd_domain(I1, [26, 666]),

    %% Formula constraints
    (43 - (I1 + I1)) #=< I1,

    %% Labeling
    fd_labeling([I1], [value_method(random)]).