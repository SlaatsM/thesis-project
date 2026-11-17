solve([i1-I1, i2-I2]) :-

    %% Domain constraints
    fd_set_vector_max(936),

    fd_domain(I1, [319, 908, 936]),
    fd_domain(I2, [23, 68, 395]),

    %% Formula constraints
    (((3 #< 18 #/\ I1 #> I1) #==> (I1 + 15) #< (I2 + -78)) #/\ (I1 #> ((I1 - 58) - I2) #/\ (((I2 - I1) + (-70 + 94)) #> 21 #/\ I2 #=< ((I1 + I2) + I2)))),

    %% Labeling
    fd_labeling([I1, I2], [value_method(random)]).