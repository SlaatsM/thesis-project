solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(908),

    fd_domain(I1, [577, 908]),

    %% Formula constraints
    (I1 #> I1 #==> (I1 #< I1 #/\ ((-73 * I1) #=< I1 #\/ -51 #=< ((28 * I1) - 16)))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).