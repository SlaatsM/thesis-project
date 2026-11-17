solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(891),

    fd_domain(I1, [394, 891]),

    %% Formula constraints
    ((#\ (I1 #=< -86) #/\ (I1 - -40) #>= 2) #\/ ((65 #=< 12 #==> I1 #< 49) #==> (((58 * I1) + 3) #=< (I1 + -40) #==> I1 #>= I1))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).