games_loop(0, 0).
games_loop(N, L) :- N > 0, line(L), M is N-1, games_loop(M, L).

