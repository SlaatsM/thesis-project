solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(956),

    fd_domain(I1, [719, 728, 956]),

    %% Formula constraints
    (I1 #\= (((80 * I1) - I1) + I1) #\/ (#\ (16 #< (49 * I1)) #/\ -43 #< (I1 - 90))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).