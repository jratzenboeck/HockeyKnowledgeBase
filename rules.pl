min_list([H], H).
min_list([H|T], M2) :- min_list(T, M), M2 is min(H, M).

max_list([H], H).
max_list([H|T], M2) :- max_list(T, M), M2 is max(H, M).
	
line_setup_offense(Line, Player) :- 
	findall(ScoredGoals, scoredGoal(_, line(Line), ScoredGoals), ScoredGoalsForGames), 
	max_list(ScoredGoalsForGames, MaxScoredGoals),
	best_offense_game(Line, MaxScoredGoals, BestOffenseGame),
	player_plays(player(Player, forward), BestOffenseGame, line(Line)).

line_setup_defense(Line, Player) :-
	findall(ReceivedGoals, scoredGoal(_, line(Line), ReceivedGoals), ReceivedGoalsForGames), 
	min_list(ReceivedGoalsForGames, MinReceivedGoals),
	best_defense_game(Line, MinReceivedGoals, BestDefenseGame),
	player_plays(player(Player, defender), BestDefenseGame, line(Line)).

best_offense_game(Line, MaxScoredGoals, BestOffenseGame) :- 
	scoredGoal(BestOffenseGame, line(Line), MaxScoredGoals).

best_defense_game(Line, MinReceivedGoals, BestDefenseGame):- 
	scoredGoal(BestDefenseGame, line(Line), MinReceivedGoals).
	


%not needed at the moment

plus_minus(Game, Line, Score) :-
	scoredGoal(game(Game), line(Line), GoalsScored, GoalsReceived),
	Score is GoalsScored - GoalsReceived.
isElement(Element, [Element, _]).
isElement(Element, [_|Tail]) :- isElement(Element, Tail).

sumGoals(L, Sum) :- findall(W, scoredGoal(_, line(L), W), Ws), sumlist(Ws, Sum).
