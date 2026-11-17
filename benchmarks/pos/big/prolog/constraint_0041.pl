solve([h2_a5_0-H2_a5_0, h2_a5_1-H2_a5_1, h2_a5_2-H2_a5_2, h2_a5_3-H2_a5_3, h2_a5_4-H2_a5_4, h2_i3-H2_i3, h2_i4-H2_i4, h2_i7-H2_i7, h8_h10_a11_0-H8_h10_a11_0, h8_h10_a11_1-H8_h10_a11_1, h8_h10_a11_2-H8_h10_a11_2, h8_h10_a11_3-H8_h10_a11_3, h8_h10_a11_4-H8_h10_a11_4, h8_h10_a15_0-H8_h10_a15_0, h8_h10_i14-H8_h10_i14, h8_i17-H8_i17, h8_i9-H8_i9, i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(570),

    fd_domain(H2_a5_0, [215, 297, 463, 474]),
    fd_domain(H2_a5_1, [215, 297, 463, 474]),
    fd_domain(H2_a5_2, [215, 297, 463, 474]),
    fd_domain(H2_a5_3, [215, 297, 463, 474]),
    fd_domain(H2_a5_4, [215, 297, 463, 474]),
    fd_domain(H2_i3, [50, 253, 570]),
    fd_domain(H2_i4, 117, 462),
    fd_domain(H2_i7, 872, 917),
    fd_domain(H8_h10_a11_0, 385, 770),
    fd_domain(H8_h10_a11_1, 385, 770),
    fd_domain(H8_h10_a11_2, 385, 770),
    fd_domain(H8_h10_a11_3, 385, 770),
    fd_domain(H8_h10_a11_4, 385, 770),
    fd_domain(H8_h10_a15_0, 5, 337),
    fd_domain(H8_h10_i14, 578, 976),
    fd_domain(H8_i17, 157, 159),
    fd_domain(H8_i9, 689, 777),
    fd_domain(I1, 649, 785),

    %% Formula constraints
    ((H8_h10_i14 + 67) - H8_h10_a11_2) #> H8_h10_a15_0,

    %% Labeling
    fd_labeling([H2_a5_0, H2_a5_1, H2_a5_2, H2_a5_3, H2_a5_4, H2_i3, H2_i4, H2_i7, H8_h10_a11_0, H8_h10_a11_1, H8_h10_a11_2, H8_h10_a11_3, H8_h10_a11_4, H8_h10_a15_0, H8_h10_i14, H8_i17, H8_i9, I1], [value_method(random)]).