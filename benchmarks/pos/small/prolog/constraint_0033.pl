solve([i1-I1]) :-

    %% Domain constraints
    fd_domain(I1, 730, 749),

    %% Formula constraints
    (74 * I1) #\= (41 - I1),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).