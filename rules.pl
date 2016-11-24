sumGoals(L, Sum) :- findall(W, scoredGoal(_, line(L), W), Ws), sumlist(Ws, Sum).

minlist([H], H).
minlist([H|T], M2) :- minlist(T, M), M2 is min(H, M).

maxlist([H], H).
maxlist([H|T], M2) :- maxlist(T, M), M2 is max(H, M).

line_setup(Line, player(X)) :- 
	findall(Goal, scoredGoal(_, line(Line), Goal), GameList), 
	maxlist(GameList, Goals), 
	bestGame(Line, Goals, BestGame),
	player_plays(player(X), game(BestGame), line(Line)).

bestGame(Line, Goals, Game) :- scoredGoal(game(Game), line(Line), Goals). 

worstGame(Line, game(WorstGame)):- 
	findall(Goal, scoredGoal(_, line(Line), Goal), GameList),  
	minlist(GameList, Goals), 
	scoredGoal(game(WorstGame), line(Line), Goals).

