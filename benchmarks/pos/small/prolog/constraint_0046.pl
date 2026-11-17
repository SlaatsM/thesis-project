solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(862),

    fd_domain(I1, [807, 862]),

    %% Formula constraints
    (-31 #> I1 #==> ((-32 #=< -24 #/\ I1 #> -30) #/\ ((1 * I1) #=< 9 #==> I1 #>= (-68 * I1)))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).