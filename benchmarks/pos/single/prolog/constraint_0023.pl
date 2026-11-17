solve([i1-I1]) :-

    %% Domain constraints
    fd_domain(I1, 68, 588),

    %% Formula constraints
    (((93 #= I1 #/\ ((I1 + I1) - I1) #>= I1) #\/ ((-53 + I1) #= I1 #/\ I1 #> -91)) #/\ ((((I1 + (6 * I1)) - I1) #< I1 #==> I1 #> 41) #==> (I1 #\= -34 #\/ (-35 * I1) #> ((I1 - (-95 * I1)) + I1)))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).