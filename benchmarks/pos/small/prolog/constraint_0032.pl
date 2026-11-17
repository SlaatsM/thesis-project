solve([a1_0_0-A1_0_0, a1_1_0-A1_1_0]) :-

    %% Domain constraints
    fd_set_vector_max(551),

    fd_domain(A1_0_0, [64, 551]),
    fd_domain(A1_1_0, [64, 551]),

    %% Formula constraints
    ((((59 * A1_1_0) #> A1_1_0 #/\ (-28 * A1_1_0) #>= 5) #/\ (A1_1_0 #>= A1_1_0 #\/ 77 #=< A1_0_0)) #==> A1_0_0 #>= (A1_1_0 + A1_0_0)),

    %% Labeling
    fd_labeling([A1_0_0, A1_1_0], [value_method(random)]).