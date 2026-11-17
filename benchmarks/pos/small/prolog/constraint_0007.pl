solve([a2_0-A2_0, a2_1-A2_1, a2_2-A2_2, i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(875),

    fd_domain(A2_0, [193, 875]),
    fd_domain(A2_1, [193, 875]),
    fd_domain(A2_2, [193, 875]),
    fd_domain(I1, 712, 722),

    %% Formula constraints
    ((#\ (A2_1 #< A2_0) #==> 43 #= -16) #/\ -84 #=< (24 * A2_1)),

    %% Labeling
    fd_labeling([A2_0, A2_1, A2_2, I1], [value_method(random)]).