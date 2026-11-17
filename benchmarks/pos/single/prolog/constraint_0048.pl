solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(939),

    fd_domain(I1, [33, 264, 731, 856, 939]),

    %% Formula constraints
    ((((I1 - I1) #=< -47 #\/ I1 #> I1) #\/ -93 #=< ((90 - I1) + (29 * I1))) #/\ (((73 * I1) #=< (-58 * I1) #\/ I1 #= (74 * I1)) #\/ I1 #=< 48)),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).