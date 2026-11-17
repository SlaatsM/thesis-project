solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(794),

    fd_domain(I1, [18, 547, 794]),

    %% Formula constraints
    ((I1 #>= (47 - I1) #/\ I1 #< ((-38 + (75 * I1)) - (-86 * I1))) #==> ((9 #< (-63 * I1) #/\ I1 #< (I1 - I1)) #\/ #\ (I1 #>= I1))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).