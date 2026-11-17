solve([i1-I1]) :-

    %% Domain constraints
    fd_domain(I1, 20, 901),

    %% Formula constraints
    (((45 * I1) #> I1 #==> (40 * I1) #>= I1) #==> I1 #= 40),

    %% Labeling
    fd_labeling([I1], [value_method(random)]).