solve([h1_i2-H1_i2]) :-

    %% Domain constraints
    fd_domain(H1_i2, 0, 214),

    %% Formula constraints
    ((#\ (((-52 * H1_i2) + ((99 * H1_i2) + (-7 * H1_i2))) #=< (28 * H1_i2)) #==> (43 #> H1_i2 #/\ (74 * H1_i2) #> H1_i2)) #/\ H1_i2 #>= (((71 * H1_i2) - 63) + H1_i2)),

    %% Labeling
    fd_labeling([H1_i2], [value_method(random)]).