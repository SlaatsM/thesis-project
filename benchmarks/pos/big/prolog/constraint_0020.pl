solve([a10_0-A10_0, a10_1-A10_1, a10_2-A10_2, a10_3-A10_3, a10_4-A10_4, a5_0-A5_0, a7_0_i9-A7_0_i9, a7_1_i9-A7_1_i9, a7_2_i9-A7_2_i9, a7_3_i9-A7_3_i9, h12_a13_0-H12_a13_0, h12_a13_1-H12_a13_1, h1_i4-H1_i4]) :-

    %% Domain constraints
    fd_set_vector_max(432),

    fd_domain(A10_0, 64, 979),
    fd_domain(A10_1, 64, 979),
    fd_domain(A10_2, 64, 979),
    fd_domain(A10_3, 64, 979),
    fd_domain(A10_4, 64, 979),
    fd_domain(A5_0, [79, 432]),
    fd_domain(A7_0_i9, 452, 483),
    fd_domain(A7_1_i9, 452, 483),
    fd_domain(A7_2_i9, 452, 483),
    fd_domain(A7_3_i9, 452, 483),
    fd_domain(H1_i4, 117, 251),
    fd_domain(H12_a13_0, 852, 912),
    fd_domain(H12_a13_1, 852, 912),

    %% Formula constraints
    A7_2_i9 #= A7_0_i9,

    %% Labeling
    fd_labeling([A10_0, A10_1, A10_2, A10_3, A10_4, A5_0, A7_0_i9, A7_1_i9, A7_2_i9, A7_3_i9, H12_a13_0, H12_a13_1, H1_i4], [value_method(random)]).