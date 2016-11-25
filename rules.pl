min_list([H], H).
min_list([H|T], M2) :- min_list(T, M), M2 is min(H, M).

max_list([H], H).
max_list([H|T], M2) :- max_list(T, M), M2 is max(H, M).
	
line_setup_offense(Line, Player) :- 
	findall(ScoredGoals, scoredGoal(_, line(Line), ScoredGoals, _), ScoredGoalsForGames), 
	max_list(ScoredGoalsForGames, MaxScoredGoals),
	best_offense_game(Line, MaxScoredGoals, BestOffenseGame),
	player_plays(player(Player, forward), BestOffenseGame, line(Line)).

line_setup_defense(Line, Player) :-
	findall(ReceivedGoals, scoredGoal(_, line(Line), _, ReceivedGoals), ReceivedGoalsForGames), 
	min_list(ReceivedGoalsForGames, MinReceivedGoals),
	best_defense_game(Line, MinReceivedGoals, BestDefenseGame),
	player_plays(player(Player, defender), BestDefenseGame, line(Line)).

best_offense_game(Line, MaxScoredGoals, BestOffenseGame) :- 
	scoredGoal(BestOffenseGame, line(Line), MaxScoredGoals, _).

best_defense_game(Line, MinReceivedGoals, BestDefenseGame):- 
	scoredGoal(BestDefenseGame, line(Line), _, MinReceivedGoals).

line_setup_for_best_plus_minus(Line, Player) :-
	findall(PlusMinus, plus_minus(_, Line, PlusMinus), PlusMinusForGames),
	max_list(PlusMinusForGames, MaxPlusMinus),
	indexOf(PlusMinusForGames, MaxPlusMinus, Index),
	atom_concat(g, Index, Game),
	player_plays(player(Player, _), game(Game), line(Line)).
	
indexOf([Element|_], Element, 1). % We found the element
indexOf([_|Tail], Element, Index):-
  indexOf(Tail, Element, Index1), % Check in the tail of the list
  Index is Index1 + 1.  % and increment the resulting index

plus_minus(Game, Line, Score) :-
	scoredGoal(game(Game), line(Line), GoalsScored, GoalsReceived),
	Score is GoalsScored - GoalsReceived.

sumGoals(L, Sum) :- findall(W, scoredGoal(_, line(L), W), Ws), sumlist(Ws, Sum).
