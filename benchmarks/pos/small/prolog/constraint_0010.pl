solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(763),

    fd_domain(I1, [179, 474, 639, 649, 763]),

    %% Formula constraints
    ((#\ (79 #> I1) #/\ (I1 #>= -58 #==> I1 #\= (40 * I1))) #\/ I1 #=< I1),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).