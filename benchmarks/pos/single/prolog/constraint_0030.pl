solve([h1_i2-H1_i2, i3-I3]) :-

    %% Domain constraints
    fd_set_vector_max(769),

    fd_domain(H1_i2, [137, 639]),
    fd_domain(I3, [2, 402, 769]),

    %% Formula constraints
    (I3 #< I3 #\/ (#\ (I3 #< -43) #/\ I3 #=< ((H1_i2 + (-83 * I3)) + -100))),

    %% Labeling
    fd_labeling([H1_i2, I3], [value_method(random)]).