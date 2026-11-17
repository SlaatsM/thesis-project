solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(726),

    fd_domain(I1, [209, 627, 726]),

    %% Formula constraints
    (((-56 #< 100 #==> I1 #\= I1) #/\ (((7 - (52 * I1)) + -35) #=< I1 #/\ I1 #< (90 - 78))) #==> (I1 #>= I1 #/\ (I1 #= ((-77 * I1) - I1) #/\ 45 #> (-95 * I1)))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).