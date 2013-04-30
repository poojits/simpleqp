simpleqp
========

Matlab implementation of [Sequential coordinate-wise algorithm][1].

Objective
---------------
The quadratic programming (QP) task with the non-negativity constraints is

	Minimize f(x) = 0.5 * x'*H*x + x'*f w.r.t. x
    subject to the constraint x >= 0.
where, H is symmetric and positive semideﬁnite N x N matrix and f is a N dimensional column vector.

Usage
---------------
    [x,fval] = qpsca(H,f)

Example
---------------
    H = [1 -1; -1 2];
    f = [-2; -6];
    [x,fval] = qpsca(H,f)
    
    x =

        9.9688
        7.9844
        
    fval =

        -33.9998

Comparision to QuadProg
---------------
    H = [1 -1; -1 2];
    f = [-2; -6];
    A = [-1 0; 0 -1];
    b = [0; 0];
    [x,fval] = quadprog(H,f,A,b)
    
    x =

        10
        8
        
    fval =

        -34

[1]: ftp://cmp.felk.cvut.cz/pub/cmp/articles/franc/Franc-TR-2005-06.pdf