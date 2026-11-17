solve([a6_0_0-A6_0_0, a6_0_1-A6_0_1, a6_0_2-A6_0_2, a6_0_3-A6_0_3, a6_0_4-A6_0_4, a6_1_0-A6_1_0, a6_1_1-A6_1_1, a6_1_2-A6_1_2, a6_1_3-A6_1_3, a6_1_4-A6_1_4, a6_2_0-A6_2_0, a6_2_1-A6_2_1, a6_2_2-A6_2_2, a6_2_3-A6_2_3, a6_2_4-A6_2_4, h1_i2-H1_i2, h1_i3-H1_i3, h1_i4-H1_i4, i5-I5]) :-

    %% Domain constraints
    fd_set_vector_max(962),

    fd_domain(A6_0_0, 598, 746),
    fd_domain(A6_0_1, 598, 746),
    fd_domain(A6_0_2, 598, 746),
    fd_domain(A6_0_3, 598, 746),
    fd_domain(A6_0_4, 598, 746),
    fd_domain(A6_1_0, 598, 746),
    fd_domain(A6_1_1, 598, 746),
    fd_domain(A6_1_2, 598, 746),
    fd_domain(A6_1_3, 598, 746),
    fd_domain(A6_1_4, 598, 746),
    fd_domain(A6_2_0, 598, 746),
    fd_domain(A6_2_1, 598, 746),
    fd_domain(A6_2_2, 598, 746),
    fd_domain(A6_2_3, 598, 746),
    fd_domain(A6_2_4, 598, 746),
    fd_domain(H1_i2, 537, 732),
    fd_domain(H1_i3, 786, 852),
    fd_domain(H1_i4, [779, 920, 962]),
    fd_domain(I5, 51, 818),

    %% Formula constraints
    A6_1_3 #>= A6_2_0,

    %% Labeling
    fd_labeling([A6_0_0, A6_0_1, A6_0_2, A6_0_3, A6_0_4, A6_1_0, A6_1_1, A6_1_2, A6_1_3, A6_1_4, A6_2_0, A6_2_1, A6_2_2, A6_2_3, A6_2_4, H1_i2, H1_i3, H1_i4, I5], [value_method(random)]).