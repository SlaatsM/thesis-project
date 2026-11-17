solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(995),

    fd_domain(I1, [119, 608, 629, 995]),

    %% Formula constraints
    I1 #>= I1,

    %% Labeling
    fd_labeling([I1], [value_method(random)]).