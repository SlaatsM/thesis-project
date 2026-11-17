solve([a1_0-A1_0, a1_1-A1_1, a1_2-A1_2, a1_3-A1_3, a1_4-A1_4, a1_5-A1_5]) :-

    %% Domain constraints
    fd_domain(A1_0, 73, 996),
    fd_domain(A1_1, 73, 996),
    fd_domain(A1_2, 73, 996),
    fd_domain(A1_3, 73, 996),
    fd_domain(A1_4, 73, 996),
    fd_domain(A1_5, 73, 996),

    %% Formula constraints
    A1_5 #>= A1_0,

    %% Labeling
    fd_labeling([A1_0, A1_1, A1_2, A1_3, A1_4, A1_5], [value_method(random)]).