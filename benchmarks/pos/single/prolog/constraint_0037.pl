solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(672),

    fd_domain(I1, [2, 173, 217, 672]),

    %% Formula constraints
    (-1 #=< (I1 - (-58 * I1)) #/\ (#\ (I1 #< I1) #/\ (I1 #>= -61 #/\ 78 #>= I1))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).