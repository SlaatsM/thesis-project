solve([a1_0-A1_0]) :-

    %% Domain constraints
    fd_set_vector_max(377),

    fd_domain(A1_0, [54, 377]),

    %% Formula constraints
    ((((-89 * A1_0) #\= 97 #\/ A1_0 #>= (-16 * A1_0)) #/\ (-94 #=< (-77 * A1_0) #/\ -21 #> (A1_0 + (65 * A1_0)))) #==> #\ ((26 #< 73 #/\ -51 #=< (A1_0 - (A1_0 - A1_0))))),

    %% Labeling
    fd_labeling([A1_0], [value_method(random)]).