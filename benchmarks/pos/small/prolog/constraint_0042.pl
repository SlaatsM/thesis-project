solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(392),

    fd_domain(I1, [88, 89, 151, 392]),

    %% Formula constraints
    ((-25 #= (70 * I1) #==> (-32 #= I1 #==> 63 #< 1)) #\/ #\ (((-44 * I1) - (34 * I1)) #> I1)),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).