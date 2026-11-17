solve([a1_0-A1_0, a1_1-A1_1, a4_0-A4_0, a4_1-A4_1, a4_2-A4_2, i3-I3]) :-

    %% Domain constraints
    fd_set_vector_max(911),

    fd_domain(A1_0, 34, 521),
    fd_domain(A1_1, 34, 521),
    fd_domain(A4_0, [297, 911]),
    fd_domain(A4_1, [297, 911]),
    fd_domain(A4_2, [297, 911]),
    fd_domain(I3, 463, 481),

    %% Formula constraints
    (((A4_1 #< -24 #==> (((21 * I3) - 76) + (-9 + A4_2)) #> I3) #/\ A4_2 #>= A4_2) #/\ I3 #> 48),

    %% Labeling
    fd_labeling([A1_0, A1_1, A4_0, A4_1, A4_2, I3], [value_method(random)]).