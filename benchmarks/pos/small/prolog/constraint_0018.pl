solve([a1_0_i3-A1_0_i3, a1_1_i3-A1_1_i3]) :-

    %% Domain constraints
    fd_set_vector_max(858),

    fd_domain(A1_0_i3, [70, 239, 375, 822, 858]),
    fd_domain(A1_1_i3, [70, 239, 375, 822, 858]),

    %% Formula constraints
    (62 #>= A1_1_i3 #==> (((-91 - (93 * A1_0_i3)) #=< ((A1_1_i3 + (91 * A1_0_i3)) - A1_1_i3) #/\ (A1_1_i3 - A1_0_i3) #>= 40) #/\ (A1_1_i3 #< (A1_0_i3 - (84 * A1_0_i3)) #/\ A1_1_i3 #=< (11 + 44)))),

    %% Labeling
    fd_labeling([A1_0_i3, A1_1_i3], [value_method(random)]).