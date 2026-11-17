solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(754),

    fd_domain(I1, [338, 404, 696, 729, 754]),

    %% Formula constraints
    ((((-13 - I1) #< -50 #\/ (((52 * I1) - -26) - (I1 + 35)) #< (I1 - I1)) #/\ -34 #=< I1) #==> (-89 - -3) #=< (12 * I1)),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).