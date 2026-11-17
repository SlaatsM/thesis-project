solve([i1-I1]) :-

    %% Domain constraints
    fd_domain(I1, 324, 340),

    %% Formula constraints
    ((94 #> I1 #==> (I1 + 16) #> I1) #==> (((-94 * I1) #> ((-70 + I1) + 18) #/\ (-20 * I1) #< (-8 - (I1 + 73))) #==> ((I1 + I1) #> 26 #/\ (49 + -86) #< I1))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).