solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(707),

    fd_domain(I1, [376, 438, 707]),

    %% Formula constraints
    I1 #>= 89,

    %% Labeling
    fd_labeling([I1], [value_method(random)]).