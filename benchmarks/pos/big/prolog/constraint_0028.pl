solve([h1_h2_a3_0-H1_h2_a3_0, h1_h2_a3_1-H1_h2_a3_1, h1_h2_a3_2-H1_h2_a3_2]) :-

    %% Domain constraints
    fd_domain(H1_h2_a3_0, 612, 762),
    fd_domain(H1_h2_a3_1, 612, 762),
    fd_domain(H1_h2_a3_2, 612, 762),

    %% Formula constraints
    ((#\ ((69 - -79) #>= H1_h2_a3_1) #\/ #\ (H1_h2_a3_2 #=< H1_h2_a3_0)) #/\ H1_h2_a3_0 #> H1_h2_a3_2),

    %% Labeling
    fd_labeling([H1_h2_a3_0, H1_h2_a3_1, H1_h2_a3_2], [value_method(random)]).