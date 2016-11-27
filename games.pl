game(g1).
game(g2).

scoredGoal(game(g1), line(l1), 1, 0).
scoredGoal(game(g1), line(l2), 2, 0).
scoredGoal(game(g1), line(l3), 1, 1).
scoredGoal(game(g1), line(l4), 0, 1).

scoredGoal(game(g2), line(l1), 0, 2).
scoredGoal(game(g2), line(l2), 1, 0).
scoredGoal(game(g2), line(l3), 1, 1).
scoredGoal(game(g2), line(l4), 2, 0).

player_plays(player('michael ouzas'), position(goalie), game(g1), _).

player_plays(player('brian lebler'), position(forward), game(g1), line(l1)).
player_plays(player('dan dasilva'), position(forward), game(g1), line(l1)).
player_plays(player('brett mclean'), position(forward), game(g1), line(l1)).
player_plays(player('sebastien piche'), position(defender), game(g1), line(l1)).
player_plays(player('jonathan daversa'), position(defender), game(g1), line(l1)).

player_plays(player('joel broda'), position(forward), game(g1), line(l2)).
player_plays(player('michael ryan polulny'), position(forward), game(g1), line(l2)).
player_plays(player('fabio hofer'), position(forward), game(g1), line(l2)).
player_plays(player('robert lukas'), position(defender), game(g1), line(l2)).
player_plays(player('marc andre dorion'), position(defender), game(g1), line(l2)).

player_plays(player('daniel oberkofler'), position(forward), game(g1), line(l3)).
player_plays(player('rick schofield'), position(forward), game(g1), line(l3)).
player_plays(player('patrick spannring'), position(forward), game(g1), line(l3)).
player_plays(player('mario altmann'), position(defender), game(g1), line(l3)).
player_plays(player('brett palin'), position(defender), game(g1), line(l3)).

player_plays(player('kevin moderer'), position(forward), game(g1), line(l4)).
player_plays(player('philip lukas'), position(forward), game(g1), line(l4)).
player_plays(player('curtis loik'), position(forward), game(g1), line(l4)).
player_plays(player('erik kirchschlaeger'), position(defender), game(g1), line(l4)).
player_plays(player('niklas mayrhauser'), position(defender), game(g1), line(l4)).


player_plays(player('michael ouzas'), position(goalie), game(g2), _).

player_plays(player('brian lebler'), position(forward), game(g2), line(l1)).
player_plays(player('dan dasilva'), position(forward), game(g2), line(l1)).
player_plays(player('brett mclean'), position(forward), game(g2), line(l1)).
player_plays(player('sebastien piche'), position(defender), game(g2), line(l1)).
player_plays(player('jonathan daversa'), position(defender), game(g2), line(l1)).

player_plays(player('joel broda'), position(forward), game(g2), line(l2)).
player_plays(player('michael ryan polulny'), position(forward), game(g2), line(l2)).
player_plays(player('fabio hofer'), position(forward), game(g2), line(l2)).
player_plays(player('robert lukas'), position(defender), game(g2), line(l2)).
player_plays(player('marc andre dorion'), position(defender), game(g2), line(l2)).

player_plays(player('daniel oberkofler'), position(forward), game(g2), line(l3)).
player_plays(player('rick schofield'), position(forward), game(g2), line(l3)).
player_plays(player('patrick spannring'), position(forward), game(g2), line(l3)).
player_plays(player('mario altmann'), position(defender), game(g2), line(l3)).
player_plays(player('brett palin'), position(defender), game(g2), line(l3)).

player_plays(player('kevin moderer'), position(forward), game(g2), line(l4)).
player_plays(player('philip lukas'), position(forward), game(g2), line(l4)).
player_plays(player('curtis loik'), position(forward), game(g2), line(l4)).
player_plays(player('erik kirchschlaeger'), position(defender), game(g2), line(l4)).
player_plays(player('niklas mayrhauser'), position(defender), game(g2), line(l4)).

