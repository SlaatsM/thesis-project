solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(868),

    fd_domain(I1, [4, 538, 726, 753, 868]),

    %% Formula constraints
    (#\ ((10 - (93 * I1)) #< I1) #\/ ((((26 + I1) + (-3 * I1)) #=< -87 #/\ I1 #> -38) #==> (-31 #=< 78 #==> 92 #>= I1))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).