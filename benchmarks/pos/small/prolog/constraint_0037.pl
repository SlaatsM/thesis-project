solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(768),

    fd_domain(I1, [83, 235, 768]),

    %% Formula constraints
    (-46 #\= -30 #\/ I1 #>= (52 * I1)),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).