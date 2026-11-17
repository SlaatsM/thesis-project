solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(802),

    fd_domain(I1, [78, 374, 715, 751, 802]),

    %% Formula constraints
    (((-54 + -26) - (31 * I1)) #=< (6 * I1) #/\ ((I1 #=< -21 #==> 3 #\= ((-81 * I1) + I1)) #/\ I1 #< (I1 + (82 * I1)))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).