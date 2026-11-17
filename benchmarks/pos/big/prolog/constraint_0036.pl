solve([a1_0-A1_0, a1_1-A1_1, a1_2-A1_2, a1_3-A1_3, a1_4-A1_4]) :-

    %% Domain constraints
    fd_domain(A1_0, 736, 900),
    fd_domain(A1_1, 736, 900),
    fd_domain(A1_2, 736, 900),
    fd_domain(A1_3, 736, 900),
    fd_domain(A1_4, 736, 900),

    %% Formula constraints
    (((((96 * A1_1) - 20) #>= 45 #/\ -71 #=< (-21 * A1_1)) #==> (19 #>= (-60 + A1_3) #/\ A1_0 #>= -50)) #\/ #\ (A1_1 #\= (100 * A1_4))),

    %% Labeling
    fd_labeling([A1_0, A1_1, A1_2, A1_3, A1_4], [value_method(random)]).