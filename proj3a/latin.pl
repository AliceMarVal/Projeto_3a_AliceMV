% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

% Your program goes here

ls3x3(A11,A12,A13,
A21,A22,A23,
A31,A32,A33):-
perm(A11,A12,A13),perm(A21,A22,A23),perm(A31,A32,A33),
perm(A11,A21,A31),perm(A12,A22,A32),perm(A13,A23,A33),
prow(A11,A12,A13),nl,prow(A21,A22,A23),nl,prow(A31,A32,A33),nl.
prow(X,Y,Z):-write(X),write(' '),write(Y),write(' '),write(Z).
perm(X,Y,Z):-neq3(X,Y,Z),num(X),num(Y),num(Z).
neq3(X,Y,Z):-neq(X,Y),neq(X,Z),neq(Y,Z).
num(1).
num(2).
num(3).
neq(1,2).
neq(1,3).
neq(2,1).
neq(2,3).
neq(3,1).
neq(3,2).


