solve([i1-I1]) :-

    %% Domain constraints
    fd_domain(I1, [7, 99]),

    %% Formula constraints
    ((I1 #>= I1 #/\ I1 #> -19) #/\ (((-64 - ((78 * I1) - 47)) #> (-20 + I1) #==> I1 #>= 48) #==> ((I1 - (I1 - I1)) #\= (48 * I1) #==> -89 #=< -14))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).