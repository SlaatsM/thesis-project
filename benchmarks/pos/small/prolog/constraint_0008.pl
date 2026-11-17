solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(961),

    fd_domain(I1, [314, 961]),

    %% Formula constraints
    (#\ (74 #> (I1 + (-96 + 83))) #/\ 40 #\= I1),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).