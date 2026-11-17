solve([a2_0-A2_0, i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(738),

    fd_domain(A2_0, [407, 413, 426, 656, 738]),
    fd_domain(I1, 40, 102),

    %% Formula constraints
    (((I1 + A2_0) #>= -70 #/\ (((-96 * I1) + (A2_0 + (23 * A2_0))) #=< (48 * I1) #==> A2_0 #\= ((-13 + I1) - A2_0))) #==> A2_0 #>= (-41 * I1)),

    %% Labeling
    fd_labeling([A2_0, I1], [value_method(random)]).