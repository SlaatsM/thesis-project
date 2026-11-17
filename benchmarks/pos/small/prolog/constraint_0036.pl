solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(870),

    fd_domain(I1, [304, 423, 492, 527, 870]),

    %% Formula constraints
    (((45 #>= I1 #/\ -46 #= -39) #/\ #\ ((78 * I1) #= (-42 + I1))) #==> (-93 #=< 78 #/\ ((46 * I1) #=< I1 #==> (I1 + I1) #= (46 * I1)))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).