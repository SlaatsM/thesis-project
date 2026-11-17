solve([i1-I1]) :-

    %% Domain constraints
    fd_domain(I1, 61, 453),

    %% Formula constraints
    #\ ((I1 #= 67 #==> #\ (I1 #< (I1 + I1)))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).