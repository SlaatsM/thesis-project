solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(587),

    fd_domain(I1, [1, 84, 133, 380, 587]),

    %% Formula constraints
    #\ (#\ ((I1 #> (I1 - I1) #/\ 43 #> I1))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).