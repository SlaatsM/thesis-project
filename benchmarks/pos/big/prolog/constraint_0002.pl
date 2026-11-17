solve([a1_0-A1_0, a1_1-A1_1, a1_2-A1_2, a1_3-A1_3, a7_0_i10-A7_0_i10, a7_1_i10-A7_1_i10, a7_2_i10-A7_2_i10, h3_a5_0-H3_a5_0, h3_a5_1-H3_a5_1, h3_a5_2-H3_a5_2, h3_a5_3-H3_a5_3, h3_i4-H3_i4, i11-I11, i12-I12]) :-

    %% Domain constraints
    fd_set_vector_max(639),

    fd_domain(A1_0, 106, 559),
    fd_domain(A1_1, 106, 559),
    fd_domain(A1_2, 106, 559),
    fd_domain(A1_3, 106, 559),
    fd_domain(A7_0_i10, 410, 986),
    fd_domain(A7_1_i10, 410, 986),
    fd_domain(A7_2_i10, 410, 986),
    fd_domain(H3_a5_0, [479, 639]),
    fd_domain(H3_a5_1, [479, 639]),
    fd_domain(H3_a5_2, [479, 639]),
    fd_domain(H3_a5_3, [479, 639]),
    fd_domain(H3_i4, 348, 758),
    fd_domain(I11, 320, 866),
    fd_domain(I12, 498, 916),

    %% Formula constraints
    H3_a5_0 #=< ((63 * A1_0) + A1_1),

    %% Labeling
    fd_labeling([A1_0, A1_1, A1_2, A1_3, A7_0_i10, A7_1_i10, A7_2_i10, H3_a5_0, H3_a5_1, H3_a5_2, H3_a5_3, H3_i4, I11, I12], [value_method(random)]).