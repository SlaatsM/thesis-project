solve([i1-I1]) :-

    %% Domain constraints
    fd_domain(I1, 196, 205),

    %% Formula constraints
    ((((I1 - (27 * I1)) + -40) #=< -43 #/\ (52 #> (-54 * I1) #\/ 72 #>= I1)) #==> (49 * I1) #> I1),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).