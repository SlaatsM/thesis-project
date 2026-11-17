solve([i1-I1, i2-I2]) :-

    %% Domain constraints
    fd_set_vector_max(840),

    fd_domain(I1, [32, 840]),
    fd_domain(I2, 780, 902),

    %% Formula constraints
    ((((I1 + (-9 - (-95 * I2))) #< I2 #/\ -48 #> (-78 * I2)) #==> (I2 #> (-23 * I1) #\/ (5 * I1) #> ((-38 * I1) - (I2 - I1)))) #/\ ((-89 #< 74 #/\ I2 #\= 11) #/\ (1 * I2) #= I1)),

    %% Labeling
    fd_labeling([I1, I2], [value_method(random)]).