player('michael ouzas', goalie).
player('florian janny', goalie).
player('dominic divis', goalie).
player('jonathan daversa', defender).
player('brett palin', defender).
player('marc andre dorion', defender).
player('niklas mayrhauser', defender).
player('gerd kragl', defender).
player('erik kirchschlaeger', defender).
player('bernhard fechtig', defender).
player('robert lukas', defender).
player('mario altmann', defender).
player('sebastien piche', defender).
player('philipp lukas', forward).
player('daniel oberkofler', forward).
player('rick schofield', forward).
player('stefan gaffal', forward).
player('laurens ober', forward).
player('brett mclean', forward).
player('joel broda', forward).
player('fabio hofer', forward).
player('curtis loik', forward).
player('stefan freunschlag', forward).
player('kevin moderer', forward).
player('patrick spannring', forward).
player('dan dasilva', forward).
player('mate gaspar', forward).
player('kevin moderer', forward).

line(l1).
line(l2).
line(l3).
line(l4).

game(g1).
game(g2).

scoredGoal(game(g1), line(l1), 1).
scoredGoal(game(g2), line(l1), 4).
scoredGoal(game(g1), line(l2), 1).
scoredGoal(game(g1), line(l3), 1).
scoredGoal(game(g1), line(l4), 1).

againstGoal(game(g1), line(l1), 1).
againstGoal(game(g2), line(l1), 4).
againstGoal(game(g1), line(l2), 0).
againstGoal(game(g1), line(l3), 2).
againstGoal(game(g1), line(l4), 0).


%player_plays(player('philipp lukas'), game(g1), line(l1)).
%player_plays(player('fabio hofer'), game(g1), line(l1)).




