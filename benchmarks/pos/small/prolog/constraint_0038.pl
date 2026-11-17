solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(949),

    fd_domain(I1, [318, 410, 496, 855, 949]),

    %% Formula constraints
    -82 #< (((98 * I1) + I1) + (69 * I1)),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).