solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(925),

    fd_domain(I1, [33, 214, 334, 558, 925]),

    %% Formula constraints
    ((75 - I1) #>= I1 #/\ ((91 #>= 16 #/\ I1 #= ((-56 * I1) + (54 + I1))) #==> #\ (I1 #>= (I1 + -92)))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).