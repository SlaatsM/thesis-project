solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(717),

    fd_domain(I1, [128, 169, 244, 717]),

    %% Formula constraints
    (((66 #\= 64 #/\ -6 #= 1) #==> (-94 #> I1 #/\ I1 #= 19)) #/\ (-42 #=< (I1 + I1) #==> (I1 - (I1 + I1)) #< 21)),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).