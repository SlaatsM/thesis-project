solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(317),

    fd_domain(I1, [89, 293, 317]),

    %% Formula constraints
    (#\ ((I1 #\= (-54 * I1) #==> I1 #< I1)) #==> (-34 #< (-51 - I1) #==> ((-96 * I1) + ((-7 * I1) + (67 * I1))) #= (I1 + (-69 + 95)))),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).