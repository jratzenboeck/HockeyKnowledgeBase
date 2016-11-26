position(goalie).
position(defender).
position(forward).

player('michael ouzas'). %goalie
player('florian janny'). %goalie
player('dominic divis'). %goalie
player('jonathan daversa'). %defender
player('brett palin'). %defender
player('marc andre dorion'). %defender
player('niklas mayrhauser'). %defender
player('gerd kragl'). %defender
player('erik kirchschlaeger'). %defender
player('bernhard fechtig'). %defender
player('robert lukas'). %defender
player('mario altmann'). %defender
player('sebastien piche'). %defender
player('philipp lukas'). %forward
player('daniel oberkofler'). %forward
player('rick schofield'). %forward
player('stefan gaffal'). %forward
player('laurens ober'). %forward
player('brett mclean'). %forward
player('joel broda'). %forward
player('fabio hofer'). %forward
player('curtis loik'). %forward
player('stefan freunschlag'). %forward
player('kevin moderer'). %forward
player('patrick spannring'). %forward
player('dan dasilva'). %forward
player('mate gaspar'). %forward
player('kevin moderer'). %forward

line(l1).
line(l2).
line(l3).
line(l4).

game(g1).
game(g2).

scoredGoal(game(g1), line(l1), 1, 2).
scoredGoal(game(g1), line(l2), 1, 1).
scoredGoal(game(g1), line(l3), 1, 2).
scoredGoal(game(g1), line(l4), 1, 0).
scoredGoal(game(g2), line(l1), 4, 4).

%game1
player_plays(player('michael ouzas'), position(goalie), game(g1), _).
player_plays(player('philipp lukas'), position(forward), game(g1), line(l1)).
player_plays(player('fabio hofer'), position(forward), game(g1), line(l1)).
player_plays(player('dan dasilva'), position(forward), game(g1), line(l1)).
player_plays(player('robert lukas'), position(defender), game(g1), line(l1)).
player_plays(player('marc andre dorion'), position(defender), game(g1), line(l1)).

%game2
player_plays(player('florian janny'), position(goalie), game(g2), _).
player_plays(player('curtis loik'), position(forward), game(g2), line(l1)).
player_plays(player('kevin moderer'), position(forward), game(g2), line(l1)).
player_plays(player('rob hisey'), position(forward), game(g2), line(l1)).
player_plays(player('robert lukas'), position(defender), game(g2), line(l1)).
player_plays(player('mario altmann'), position(defender), game(g2), line(l1)).



