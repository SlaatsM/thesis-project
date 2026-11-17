solve([i1-I1, i2-I2, i3-I3]) :-

    %% Domain constraints
    fd_set_vector_max(627),

    fd_domain(I1, [34, 130, 483, 564, 627]),
    fd_domain(I2, 518, 1000),
    fd_domain(I3, 39, 731),

    %% Formula constraints
    ((#\ (I2 #\= I1) #/\ (I3 #= 59 #/\ I1 #= I1)) #\/ ((I2 #\= 52 #/\ I1 #= -89) #/\ (-3 #< (70 * I2) #/\ -37 #> 48))),

    %% Labeling
    fd_labeling([I1, I2, I3], [value_method(random)]).