solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(961),

    fd_domain(I1, [144, 212, 381, 961]),

    %% Formula constraints
    (((I1 #>= I1 #/\ 49 #> ((32 * I1) + I1)) #/\ ((I1 + I1) #=< ((-10 * I1) - I1) #/\ -98 #\= 71)) #==> ((I1 #> I1 #/\ (39 * I1) #=< (6 * I1)) #==> (I1 #< I1 #/\ (6 * I1) #< -63))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).