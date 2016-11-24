sumGoals(L, Sum) :- findall(W, scoredGoal(_, line(L), W), Ws), sumlist(Ws, Sum).

minlist([H], H).
minlist([H|T], M2):- minlist(T, M), M2 is min(H, M).

maxlist([H], H).
maxlist([H|T], M2):- maxlist(T, M), M2 is max(H, M).

bestGame(Line, game(BestGame)):- 
	findall(Game, scoredGoal(_, line(Line), Game), GameList), 
	maxlist(GameList, Goals), 
	scoredGoal(game(BestGame), line(Line), Goals).

worstGame(Line, game(BestGame)):- 
	findall(Game, scoredGoal(_, line(Line), Game), GameList),  
	minlist(GameList, Goals), 
	scoredGoal(game(BestGame), line(Line), Goals).

