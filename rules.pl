min_list([H], H).
min_list([H|T], M2) :- 
	min_list(T, M), M2 is min(H, M).

max_list([H], H).
max_list([H|T], M2) :- 
	max_list(T, M), M2 is max(H, M).

indexOf([Element|_], Element, 1). 					% We found the element
indexOf([_|Tail], Element, Index) :-
  	indexOf(Tail, Element, Index1), 				% Check in the tail of the list
  	Index is Index1 + 1.  						% and increment the resulting index

plus_minus_goals(Game, Line, Score) :-
	scoredGoal(game(Game), line(Line), GoalsScored, GoalsReceived),
	Score is GoalsScored - GoalsReceived.

received_goals(Game, Score) :- 
	findall(ReceivedGoal, scoredGoal(game(Game), _, _, ReceivedGoal), ReceivedGoals), 
	sumlist(ReceivedGoals, Score).

best_offense_game(Line, BestOffenseGame) :- 
	findall(ScoredGoals, scoredGoal(_, line(Line), ScoredGoals, _), ScoredGoalsForGames), 
	max_list(ScoredGoalsForGames, MaxScoredGoals),
	scoredGoal(BestOffenseGame, line(Line), MaxScoredGoals, _).

best_defense_game(Line, BestDefenseGame) :- 
	findall(ReceivedGoals, scoredGoal(_, line(Line), _, ReceivedGoals), ReceivedGoalsForGames), 
	min_list(ReceivedGoalsForGames, MinReceivedGoals),
	scoredGoal(BestDefenseGame, line(Line), _, MinReceivedGoals).

best_goalie_game(game(BestDefenseGame)) :- 
	findall(Game, scoredGoal(game(Game), _, _, _), GamesAsList), 
	list_to_set(GamesAsList, GamesAsSet),  
	maplist(received_goals, GamesAsSet, ReceivedGoalsForGames),
	min_list(ReceivedGoalsForGames, MinReceivedGoals),
	indexOf(ReceivedGoalsForGames, MinReceivedGoals, Index),
	atom_concat(g, Index, BestDefenseGame).

best_plus_minus_game(Line, game(BestPlusMinusGame)) :-
	findall(PlusMinus, plus_minus_goals(_, Line, PlusMinus), PlusMinusForGames),
	max_list(PlusMinusForGames, MaxPlusMinus),
	indexOf(PlusMinusForGames, MaxPlusMinus, Index),
	atom_concat(g, Index, BestPlusMinusGame).
	
line_setup_offense(Line, Player) :- 
	best_offense_game(Line, BestOffenseGame),
	player_plays(player(Player), position(forward), BestOffenseGame, line(Line)).

line_setup_defense(Line, Player) :-
	best_defense_game(Line, BestDefenseGame),
	player_plays(player(Player), position(defender), BestDefenseGame, line(Line)).

line_setup_goalie(Line, Player) :-
	best_goalie_game(BestGoalieGame),
	player_plays(player(Player), position(goalie), BestGoalieGame, line(Line)).

line_setup_plus_minus(Line, Player) :-
	best_plus_minus_game(Line, BestPlusMinusGame),
	player_plays(player(Player), position(_), BestPlusMinusGame, line(Line)).


