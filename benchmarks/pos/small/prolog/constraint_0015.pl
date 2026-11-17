solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(700),

    fd_domain(I1, [284, 421, 632, 651, 700]),

    %% Formula constraints
    (#\ (I1 #>= (85 + I1)) #==> (73 #< (40 * I1) #/\ (((-77 * I1) + I1) #\= 10 #/\ -75 #\= (I1 - 31)))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).