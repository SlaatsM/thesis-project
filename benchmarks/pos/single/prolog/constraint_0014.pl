solve([a2_0-A2_0, i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(650),

    fd_domain(A2_0, 167, 565),
    fd_domain(I1, [315, 650]),

    %% Formula constraints
    (A2_0 #>= -60 #==> (57 * I1) #= ((49 * A2_0) + I1)),

    %% Labeling
    fd_labeling([A2_0, I1], [value_method(random)]).