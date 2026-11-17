solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(597),

    fd_domain(I1, [77, 137, 230, 344, 597]),

    %% Formula constraints
    ((I1 - (46 * I1)) #> I1 #\/ ((6 #=< -65 #/\ (-71 - I1) #=< I1) #==> (I1 #>= 64 #/\ -1 #=< -32))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).