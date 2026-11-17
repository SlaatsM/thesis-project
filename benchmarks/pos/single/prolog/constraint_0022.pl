solve([a1_0-A1_0, a1_1-A1_1, a1_2-A1_2]) :-

    %% Domain constraints
    fd_set_vector_max(907),

    fd_domain(A1_0, [288, 610, 907]),
    fd_domain(A1_1, [288, 610, 907]),
    fd_domain(A1_2, [288, 610, 907]),

    %% Formula constraints
    (-35 #\= (79 * A1_0) #/\ (#\ ((A1_1 - A1_0) #< (A1_0 + A1_2)) #\/ (9 * A1_2) #= A1_1)),

    %% Labeling
    fd_labeling([A1_0, A1_1, A1_2], [value_method(random)]).