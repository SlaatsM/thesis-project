solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(844),

    fd_domain(I1, [42, 348, 647, 844]),

    %% Formula constraints
    (45 #> (1 * I1) #/\ (#\ ((-1 - 74) #> I1) #/\ (I1 #= 36 #==> 50 #< (47 * I1)))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).