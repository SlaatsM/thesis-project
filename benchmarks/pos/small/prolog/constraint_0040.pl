solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(687),

    fd_domain(I1, [212, 630, 687]),

    %% Formula constraints
    (((I1 #\= I1 #/\ (-14 * I1) #= I1) #==> I1 #>= (-65 - -49)) #\/ #\ ((I1 - (I1 - I1)) #< ((87 + I1) - I1))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).