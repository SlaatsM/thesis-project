solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(920),

    fd_domain(I1, [186, 272, 497, 879, 920]),

    %% Formula constraints
    ((((I1 + (-39 * I1)) #=< 6 #/\ I1 #=< (100 * I1)) #/\ (I1 #< I1 #/\ ((-42 * I1) - -71) #= I1)) #==> (I1 - -37) #< I1),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).