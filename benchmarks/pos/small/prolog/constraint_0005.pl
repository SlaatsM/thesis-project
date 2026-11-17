solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(949),

    fd_domain(I1, [656, 767, 913, 949]),

    %% Formula constraints
    I1 #> 29,

    %% Labeling
    fd_labeling([I1], [value_method(random)]).