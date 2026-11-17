solve([h1_i2-H1_i2]) :-

    %% Domain constraints
    fd_set_vector_max(970),

    fd_domain(H1_i2, [322, 452, 659, 777, 970]),

    %% Formula constraints
    ((H1_i2 #=< (H1_i2 + H1_i2) #/\ H1_i2 #>= 53) #==> 76 #< H1_i2),

    %% Labeling
    fd_labeling([H1_i2], [value_method(random)]).