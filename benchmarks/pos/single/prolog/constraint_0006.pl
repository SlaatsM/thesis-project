solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(647),

    fd_domain(I1, [29, 51, 355, 425, 647]),

    %% Formula constraints
    #\ (I1 #>= 43),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).