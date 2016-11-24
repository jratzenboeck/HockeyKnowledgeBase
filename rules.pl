sumGoals(L, Sum) :- findall(W, scoredGoal(_, line(L), W), Ws), sumlist(Ws, Sum).

minlist([H], H).
minlist([H|T], M2):- minlist(T, M), M2 is min(H, M).

maxlist([H], H).
maxlist([H|T], M2):- maxlist(T, M), M2 is max(H, M).

bestGame(L, game(Y)):- findall(G, scoredGoal(_, line(L), G), Gs),  maxlist(Gs, X), scoredGoal(game(Y), line(L), X).
worstGame(L, game(Y)):- findall(G, scoredGoal(_, line(L), G), Gs),  minList(Gs, X), scoredGoal(game(Y), line(L), X).

