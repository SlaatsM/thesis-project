solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(907),

    fd_domain(I1, [9, 69, 225, 886, 907]),

    %% Formula constraints
    (((45 #=< 55 #/\ 31 #> I1) #==> I1 #>= ((-78 + 76) + 15)) #==> (((89 + ((20 * I1) - I1)) #< (78 * I1) #/\ -71 #>= I1) #/\ 26 #= 99)),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).