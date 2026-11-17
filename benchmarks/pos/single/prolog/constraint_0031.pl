solve([i1-I1]) :-

    %% Domain constraints
    fd_domain(I1, 0, 713),

    %% Formula constraints
    -36 #>= (-50 - (-41 * I1)),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).