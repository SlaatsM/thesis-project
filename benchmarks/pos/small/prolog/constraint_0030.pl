solve([a1_0-A1_0, a1_1-A1_1]) :-

    %% Domain constraints
    fd_set_vector_max(760),

    fd_domain(A1_0, [568, 760]),
    fd_domain(A1_1, [568, 760]),

    %% Formula constraints
    (((38 #>= (A1_0 + -92) #/\ A1_1 #=< A1_0) #\/ -100 #=< ((A1_1 + A1_1) + A1_1)) #/\ (((A1_0 + -51) #= A1_1 #/\ (95 * A1_0) #=< (-61 * A1_1)) #==> (-97 #=< 34 #==> A1_0 #\= A1_0))),

    %% Labeling
    fd_labeling([A1_0, A1_1], [value_method(random)]).