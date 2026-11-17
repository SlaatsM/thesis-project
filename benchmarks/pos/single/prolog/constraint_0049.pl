solve([h1_i2-H1_i2, h1_i3-H1_i3]) :-

    %% Domain constraints
    fd_set_vector_max(609),

    fd_domain(H1_i2, [174, 321, 404, 609]),
    fd_domain(H1_i3, 386, 574),

    %% Formula constraints
    (H1_i2 #>= ((65 - 81) + H1_i3) #/\ H1_i3 #= H1_i2),

    %% Labeling
    fd_labeling([H1_i2, H1_i3], [value_method(random)]).