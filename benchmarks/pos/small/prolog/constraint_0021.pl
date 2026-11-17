solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(889),

    fd_domain(I1, [388, 472, 606, 889]),

    %% Formula constraints
    (((81 - I1) #>= -36 #==> (I1 #= 77 #/\ (-8 * I1) #>= I1)) #\/ (((I1 + (71 * I1)) #=< 91 #/\ I1 #< (90 * I1)) #\/ (75 #=< I1 #==> -21 #< 70))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).