solve([a2_0-A2_0, i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(937),

    fd_domain(A2_0, [138, 436]),
    fd_domain(I1, [320, 727, 937]),

    %% Formula constraints
    (A2_0 #>= (((33 * A2_0) - (77 * I1)) - A2_0) #/\ ((19 #< ((A2_0 - (100 * I1)) - (I1 + 14)) #\/ I1 #> 86) #==> (I1 #=< I1 #/\ I1 #< A2_0))),

    %% Labeling
    fd_labeling([A2_0, I1], [value_method(random)]).