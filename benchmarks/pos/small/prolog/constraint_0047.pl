solve([h1_i2-H1_i2]) :-

    %% Domain constraints
    fd_set_vector_max(752),

    fd_domain(H1_i2, [120, 152, 161, 283, 752]),

    %% Formula constraints
    (H1_i2 #\= H1_i2 #==> (((96 * H1_i2) #>= H1_i2 #\/ -7 #= 39) #/\ 32 #>= H1_i2)),

    %% Labeling
    fd_labeling([H1_i2], [value_method(random)]).