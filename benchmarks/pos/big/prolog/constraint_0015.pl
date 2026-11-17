solve([a2_0-A2_0, a2_1-A2_1, a2_2-A2_2, a2_3-A2_3, h4_a5_0-H4_a5_0, h4_a5_1-H4_a5_1, h4_a5_2-H4_a5_2, h4_a5_3-H4_a5_3, h4_a5_4-H4_a5_4, h4_i7-H4_i7, h4_i8-H4_i8, h9_i10-H9_i10, h9_i11-H9_i11, i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(954),

    fd_domain(A2_0, [120, 657, 830, 954]),
    fd_domain(A2_1, [120, 657, 830, 954]),
    fd_domain(A2_2, [120, 657, 830, 954]),
    fd_domain(A2_3, [120, 657, 830, 954]),
    fd_domain(H4_a5_0, 56, 985),
    fd_domain(H4_a5_1, 56, 985),
    fd_domain(H4_a5_2, 56, 985),
    fd_domain(H4_a5_3, 56, 985),
    fd_domain(H4_a5_4, 56, 985),
    fd_domain(H4_i7, 240, 868),
    fd_domain(H4_i8, [458, 758]),
    fd_domain(H9_i10, 558, 690),
    fd_domain(H9_i11, 731, 947),
    fd_domain(I1, 851, 985),

    %% Formula constraints
    I1 #=< ((83 * H4_a5_3) - -96),

    %% Labeling
    fd_labeling([A2_0, A2_1, A2_2, A2_3, H4_a5_0, H4_a5_1, H4_a5_2, H4_a5_3, H4_a5_4, H4_i7, H4_i8, H9_i10, H9_i11, I1], [value_method(random)]).