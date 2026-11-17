solve([h1_a2_0-H1_a2_0, h1_a2_1-H1_a2_1, h1_a2_2-H1_a2_2, h1_i4-H1_i4, h1_i5-H1_i5, h6_a13_0_0-H6_a13_0_0, h6_a13_1_0-H6_a13_1_0, h6_a13_2_0-H6_a13_2_0, h6_a13_3_0-H6_a13_3_0, h6_a13_4_0-H6_a13_4_0, h6_h10_i11-H6_h10_i11, h6_h10_i12-H6_h10_i12, h6_h7_i9-H6_h7_i9, h6_i16-H6_i16]) :-

    %% Domain constraints
    fd_domain(H1_a2_0, 19, 39),
    fd_domain(H1_a2_1, 19, 39),
    fd_domain(H1_a2_2, 19, 39),
    fd_domain(H1_i4, 54, 544),
    fd_domain(H1_i5, 238, 256),
    fd_domain(H6_a13_0_0, 70, 389),
    fd_domain(H6_a13_1_0, 70, 389),
    fd_domain(H6_a13_2_0, 70, 389),
    fd_domain(H6_a13_3_0, 70, 389),
    fd_domain(H6_a13_4_0, 70, 389),
    fd_domain(H6_h10_i11, 156, 517),
    fd_domain(H6_h10_i12, 86, 948),
    fd_domain(H6_h7_i9, 118, 257),
    fd_domain(H6_i16, 53, 591),

    %% Formula constraints
    60 #\= H6_i16,

    %% Labeling
    fd_labeling([H1_a2_0, H1_a2_1, H1_a2_2, H1_i4, H1_i5, H6_a13_0_0, H6_a13_1_0, H6_a13_2_0, H6_a13_3_0, H6_a13_4_0, H6_h10_i11, H6_h10_i12, H6_h7_i9, H6_i16], [value_method(random)]).