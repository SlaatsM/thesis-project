solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(668),

    fd_domain(I1, [19, 597, 668]),

    %% Formula constraints
    ((I1 #>= 51 #==> (I1 #< I1 #/\ I1 #> 36)) #\/ (((I1 + I1) #\= 2 #\/ 92 #>= I1) #/\ (I1 #> I1 #\/ (-65 * I1) #> -92))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).