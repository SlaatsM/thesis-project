solve([x-X, y-Y, z-Z]) :-

    %% Domain constraints
    fd_domain(X, 0, 100),
    fd_domain(Y, 0, 100),
    fd_domain(Z, 0, 100),

    %% Formula constraints
    Z #= X + 85,
    Y #>= X + 18,
    Y #=< X + 65,
    Z #> Y,

    %% Labeling
    fd_labeling([X,Y,Z], [value_method(random)]).