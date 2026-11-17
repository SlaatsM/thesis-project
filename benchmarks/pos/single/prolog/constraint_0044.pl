solve([i1-I1]) :-

    %% Domain constraints
    fd_domain(I1, 53, 477),

    %% Formula constraints
    (57 #= I1 #/\ ((I1 #> I1 #==> 20 #>= I1) #==> (I1 #= (-19 + ((-56 * I1) + (-25 * I1))) #==> I1 #< 34))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).