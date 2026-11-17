solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(903),

    fd_domain(I1, [175, 231, 293, 509, 903]),

    %% Formula constraints
    (31 #= -94 #==> ((I1 #= I1 #==> I1 #\= (100 * I1)) #==> (-58 + (-92 * I1)) #>= (-76 * I1))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).