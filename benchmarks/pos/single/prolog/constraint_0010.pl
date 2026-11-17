solve([a1_0-A1_0]) :-

    %% Domain constraints
    fd_set_vector_max(797),

    fd_domain(A1_0, [86, 279, 508, 546, 797]),

    %% Formula constraints
    91 #> A1_0,

    %% Labeling
    fd_labeling([A1_0], [value_method(random)]).