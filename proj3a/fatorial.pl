% factorial(N,M) holds when M=Nx(N-1)x...x2x1.
factorial(1,1).
factorial(N,M) :- N > 1, N1 is N-1, factorial(N1,K), M is N*K.