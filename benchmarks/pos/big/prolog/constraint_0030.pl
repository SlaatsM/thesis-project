solve([a10_0-A10_0, a10_1-A10_1, a10_2-A10_2, a10_3-A10_3, a13_0-A13_0, a13_1-A13_1, a13_2-A13_2, a13_3-A13_3, a13_4-A13_4, a13_5-A13_5, a8_0-A8_0, h1_a3_0-H1_a3_0, h1_a3_1-H1_a3_1, h1_a3_2-H1_a3_2, h1_a3_3-H1_a3_3, h1_a3_4-H1_a3_4, h1_a5_0_0-H1_a5_0_0, h1_a5_0_1-H1_a5_0_1, h1_a5_1_0-H1_a5_1_0, h1_a5_1_1-H1_a5_1_1, h1_a5_2_0-H1_a5_2_0, h1_a5_2_1-H1_a5_2_1, h1_a5_3_0-H1_a5_3_0, h1_a5_3_1-H1_a5_3_1, h1_i2-H1_i2, i12-I12]) :-

    %% Domain constraints
    fd_set_vector_max(979),

    fd_domain(A10_0, 869, 888),
    fd_domain(A10_1, 869, 888),
    fd_domain(A10_2, 869, 888),
    fd_domain(A10_3, 869, 888),
    fd_domain(A13_0, 743, 891),
    fd_domain(A13_1, 743, 891),
    fd_domain(A13_2, 743, 891),
    fd_domain(A13_3, 743, 891),
    fd_domain(A13_4, 743, 891),
    fd_domain(A13_5, 743, 891),
    fd_domain(A8_0, [354, 454, 979]),
    fd_domain(H1_a3_0, [174, 192, 422, 734]),
    fd_domain(H1_a3_1, [174, 192, 422, 734]),
    fd_domain(H1_a3_2, [174, 192, 422, 734]),
    fd_domain(H1_a3_3, [174, 192, 422, 734]),
    fd_domain(H1_a3_4, [174, 192, 422, 734]),
    fd_domain(H1_a5_0_0, 47, 715),
    fd_domain(H1_a5_0_1, 47, 715),
    fd_domain(H1_a5_1_0, 47, 715),
    fd_domain(H1_a5_1_1, 47, 715),
    fd_domain(H1_a5_2_0, 47, 715),
    fd_domain(H1_a5_2_1, 47, 715),
    fd_domain(H1_a5_3_0, 47, 715),
    fd_domain(H1_a5_3_1, 47, 715),
    fd_domain(H1_i2, 520, 548),
    fd_domain(I12, 371, 785),

    %% Formula constraints
    A13_5 #< A13_0,

    %% Labeling
    fd_labeling([A10_0, A10_1, A10_2, A10_3, A13_0, A13_1, A13_2, A13_3, A13_4, A13_5, A8_0, H1_a3_0, H1_a3_1, H1_a3_2, H1_a3_3, H1_a3_4, H1_a5_0_0, H1_a5_0_1, H1_a5_1_0, H1_a5_1_1, H1_a5_2_0, H1_a5_2_1, H1_a5_3_0, H1_a5_3_1, H1_i2, I12], [value_method(random)]).