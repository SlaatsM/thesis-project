solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(703),

    fd_domain(I1, [104, 117, 703]),

    %% Formula constraints
    #\ (((I1 - I1) #>= I1 #/\ 65 #> I1)),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).