solve([h1_a6_0-H1_a6_0, h1_a8_0_0-H1_a8_0_0, h1_a8_0_1-H1_a8_0_1, h1_a8_0_2-H1_a8_0_2, h1_a8_0_3-H1_a8_0_3, h1_a8_1_0-H1_a8_1_0, h1_a8_1_1-H1_a8_1_1, h1_a8_1_2-H1_a8_1_2, h1_a8_1_3-H1_a8_1_3, h1_a8_2_0-H1_a8_2_0, h1_a8_2_1-H1_a8_2_1, h1_a8_2_2-H1_a8_2_2, h1_a8_2_3-H1_a8_2_3, h1_h11_a14_0-H1_h11_a14_0, h1_h11_a14_1-H1_h11_a14_1, h1_h11_a14_2-H1_h11_a14_2, h1_h11_a14_3-H1_h11_a14_3, h1_h11_a14_4-H1_h11_a14_4, h1_h2_i3-H1_h2_i3, h1_h2_i4-H1_h2_i4, h1_h2_i5-H1_h2_i5]) :-

    %% Domain constraints
    fd_set_vector_max(940),

    fd_domain(H1_a6_0, 14, 952),
    fd_domain(H1_a8_0_0, 206, 899),
    fd_domain(H1_a8_0_1, 206, 899),
    fd_domain(H1_a8_0_2, 206, 899),
    fd_domain(H1_a8_0_3, 206, 899),
    fd_domain(H1_a8_1_0, 206, 899),
    fd_domain(H1_a8_1_1, 206, 899),
    fd_domain(H1_a8_1_2, 206, 899),
    fd_domain(H1_a8_1_3, 206, 899),
    fd_domain(H1_a8_2_0, 206, 899),
    fd_domain(H1_a8_2_1, 206, 899),
    fd_domain(H1_a8_2_2, 206, 899),
    fd_domain(H1_a8_2_3, 206, 899),
    fd_domain(H1_h11_a14_0, 121, 709),
    fd_domain(H1_h11_a14_1, 121, 709),
    fd_domain(H1_h11_a14_2, 121, 709),
    fd_domain(H1_h11_a14_3, 121, 709),
    fd_domain(H1_h11_a14_4, 121, 709),
    fd_domain(H1_h2_i3, [168, 759, 940]),
    fd_domain(H1_h2_i4, 56, 845),
    fd_domain(H1_h2_i5, 312, 707),

    %% Formula constraints
    ((((99 * H1_a8_1_2) #=< ((56 * H1_a8_2_0) + (10 - H1_a8_0_3)) #==> (2 * H1_h11_a14_2) #> H1_h11_a14_2) #\/ 69 #=< -41) #==> #\ ((-48 * H1_a8_0_1) #\= (-52 * H1_h11_a14_1))),

    %% Labeling
    fd_labeling([H1_a6_0, H1_a8_0_0, H1_a8_0_1, H1_a8_0_2, H1_a8_0_3, H1_a8_1_0, H1_a8_1_1, H1_a8_1_2, H1_a8_1_3, H1_a8_2_0, H1_a8_2_1, H1_a8_2_2, H1_a8_2_3, H1_h11_a14_0, H1_h11_a14_1, H1_h11_a14_2, H1_h11_a14_3, H1_h11_a14_4, H1_h2_i3, H1_h2_i4, H1_h2_i5], [value_method(random)]).