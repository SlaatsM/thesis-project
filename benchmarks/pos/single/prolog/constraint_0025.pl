solve([i1-I1]) :-

    %% Domain constraints
    fd_set_vector_max(954),

    fd_domain(I1, [20, 316, 772, 954]),

    %% Formula constraints
    ((((-17 - 53) #> ((60 * I1) - ((-22 * I1) - I1)) #\/ 23 #< I1) #/\ (-96 #=< (I1 + 7) #==> (-25 * I1) #=< I1)) #==> 76 #> I1),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).