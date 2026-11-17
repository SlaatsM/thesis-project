solve([i1-I1]) :-

    %% Domain constraints
    fd_domain(I1, 36, 334),

    %% Formula constraints
    (((-83 #< I1 #/\ 46 #= I1) #\/ #\ ((12 + (-54 * I1)) #=< I1)) #/\ (#\ (I1 #= 98) #==> (2 * I1) #> (-18 + 49))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).