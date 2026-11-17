solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(848),

    fd_domain(I1, [343, 456, 572, 848]),

    %% Formula constraints
    (((((I1 + I1) - I1) #=< ((-43 - (29 * I1)) + -67) #/\ I1 #= 34) #/\ (-6 #= (95 * I1) #/\ 73 #\= -95)) #\/ I1 #\= (-3 * I1)),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).