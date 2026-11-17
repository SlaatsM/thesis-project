solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(171),

    fd_domain(I1, [30, 171]),

    %% Formula constraints
    (((I1 #>= 67 #/\ I1 #=< (3 * I1)) #==> (I1 #> (((-35 * I1) + I1) + 86) #/\ (84 * I1) #< I1)) #/\ (((77 * I1) #=< ((I1 - -100) - (I1 + I1)) #\/ (67 * I1) #=< I1) #==> (I1 #< I1 #\/ I1 #=< I1))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).