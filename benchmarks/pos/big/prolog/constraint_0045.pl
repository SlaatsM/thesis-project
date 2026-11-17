solve([a4_0_i6-A4_0_i6, a4_1_i6-A4_1_i6, a4_2_i6-A4_2_i6, a4_3_i6-A4_3_i6, a4_4_i6-A4_4_i6, i1-I1, i2-I2, i3-I3]) :-

    %% Domain constraints
    fd_domain(A4_0_i6, 502, 744),
    fd_domain(A4_1_i6, 502, 744),
    fd_domain(A4_2_i6, 502, 744),
    fd_domain(A4_3_i6, 502, 744),
    fd_domain(A4_4_i6, 502, 744),
    fd_domain(I1, 264, 629),
    fd_domain(I2, 315, 956),
    fd_domain(I3, 24, 296),

    %% Formula constraints
    I1 #\= I3,

    %% Labeling
    fd_labeling([A4_0_i6, A4_1_i6, A4_2_i6, A4_3_i6, A4_4_i6, I1, I2, I3], [value_method(random)]).