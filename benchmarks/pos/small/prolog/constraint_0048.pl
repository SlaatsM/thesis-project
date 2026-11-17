solve([h1_i2-H1_i2]) :-

    %% Domain constraints
    fd_set_vector_max(658),

    fd_domain(H1_i2, [23, 193, 545, 580, 658]),

    %% Formula constraints
    #\ ((H1_i2 + (H1_i2 - H1_i2)) #>= (H1_i2 - (-78 - 33))),

    %% Labeling
    fd_labeling([H1_i2], [value_method(random)]).