solve([a1_0_a5_0-A1_0_a5_0, a1_0_a5_1-A1_0_a5_1, a1_0_a5_2-A1_0_a5_2, a1_0_a5_3-A1_0_a5_3, a1_0_a5_4-A1_0_a5_4, a1_0_i3-A1_0_i3, a1_0_i7-A1_0_i7, a1_1_a5_0-A1_1_a5_0, a1_1_a5_1-A1_1_a5_1, a1_1_a5_2-A1_1_a5_2, a1_1_a5_3-A1_1_a5_3, a1_1_a5_4-A1_1_a5_4, a1_1_i3-A1_1_i3, a1_1_i7-A1_1_i7, a1_2_a5_0-A1_2_a5_0, a1_2_a5_1-A1_2_a5_1, a1_2_a5_2-A1_2_a5_2, a1_2_a5_3-A1_2_a5_3, a1_2_a5_4-A1_2_a5_4, a1_2_i3-A1_2_i3, a1_2_i7-A1_2_i7, a1_3_a5_0-A1_3_a5_0, a1_3_a5_1-A1_3_a5_1, a1_3_a5_2-A1_3_a5_2, a1_3_a5_3-A1_3_a5_3, a1_3_a5_4-A1_3_a5_4, a1_3_i3-A1_3_i3, a1_3_i7-A1_3_i7, i8-I8]) :-

    %% Domain constraints
    fd_set_vector_max(927),

    fd_domain(A1_0_a5_0, 213, 237),
    fd_domain(A1_0_a5_1, 213, 237),
    fd_domain(A1_0_a5_2, 213, 237),
    fd_domain(A1_0_a5_3, 213, 237),
    fd_domain(A1_0_a5_4, 213, 237),
    fd_domain(A1_0_i3, [83, 429]),
    fd_domain(A1_0_i7, [30, 79, 309, 927]),
    fd_domain(A1_1_a5_0, 213, 237),
    fd_domain(A1_1_a5_1, 213, 237),
    fd_domain(A1_1_a5_2, 213, 237),
    fd_domain(A1_1_a5_3, 213, 237),
    fd_domain(A1_1_a5_4, 213, 237),
    fd_domain(A1_1_i3, [83, 429]),
    fd_domain(A1_1_i7, [30, 79, 309, 927]),
    fd_domain(A1_2_a5_0, 213, 237),
    fd_domain(A1_2_a5_1, 213, 237),
    fd_domain(A1_2_a5_2, 213, 237),
    fd_domain(A1_2_a5_3, 213, 237),
    fd_domain(A1_2_a5_4, 213, 237),
    fd_domain(A1_2_i3, [83, 429]),
    fd_domain(A1_2_i7, [30, 79, 309, 927]),
    fd_domain(A1_3_a5_0, 213, 237),
    fd_domain(A1_3_a5_1, 213, 237),
    fd_domain(A1_3_a5_2, 213, 237),
    fd_domain(A1_3_a5_3, 213, 237),
    fd_domain(A1_3_a5_4, 213, 237),
    fd_domain(A1_3_i3, [83, 429]),
    fd_domain(A1_3_i7, [30, 79, 309, 927]),
    fd_domain(I8, 207, 503),

    %% Formula constraints
    (((A1_3_a5_1 #>= A1_2_i3 #\/ A1_2_i7 #\= (A1_2_a5_1 + A1_1_a5_1)) #/\ #\ (A1_2_i7 #>= A1_0_i7)) #==> A1_2_a5_1 #< A1_0_a5_2),

    %% Labeling
    fd_labeling([A1_0_a5_0, A1_0_a5_1, A1_0_a5_2, A1_0_a5_3, A1_0_a5_4, A1_0_i3, A1_0_i7, A1_1_a5_0, A1_1_a5_1, A1_1_a5_2, A1_1_a5_3, A1_1_a5_4, A1_1_i3, A1_1_i7, A1_2_a5_0, A1_2_a5_1, A1_2_a5_2, A1_2_a5_3, A1_2_a5_4, A1_2_i3, A1_2_i7, A1_3_a5_0, A1_3_a5_1, A1_3_a5_2, A1_3_a5_3, A1_3_a5_4, A1_3_i3, A1_3_i7, I8], [value_method(random)]).