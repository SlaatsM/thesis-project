solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(894),

    fd_domain(I1, [27, 636, 717, 894]),

    %% Formula constraints
    #\ (((-81 #>= I1 #/\ (99 * I1) #> 35) #\/ (-85 #=< I1 #==> 100 #=< I1))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).