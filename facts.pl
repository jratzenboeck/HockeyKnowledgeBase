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
scoredGoal(game(g1), line(l2), 1).
scoredGoal(game(g1), line(l3), 1).
scoredGoal(game(g1), line(l4), 1).
scoredGoal(game(g2), line(l1), 4).

receivedGoal(game(g1), line(l1), 2).
receivedGoal(game(g2), line(l1), 4).
receivedGoal(game(g1), line(l2), 0).
receivedGoal(game(g1), line(l3), 2).
receivedGoal(game(g1), line(l4), 0).

player_plays(player('philipp lukas', forward), game(g1), line(l1)).
player_plays(player('fabio hofer', forward), game(g1), line(l1)).
player_plays(player('dan dasilva', forward), game(g1), line(l1)).
player_plays(player('robert lukas', defender), game(g1), line(l1)).
player_plays(player('marc andre dorion', defender), game(g1), line(l1)).

player_plays(player('curtis loik', forward), game(g2), line(l1)).
player_plays(player('kevin moderer', forward), game(g2), line(l1)).
player_plays(player('rob hisey', forward), game(g2), line(l1)).
player_plays(player('robert lukas', defender), game(g2), line(l1)).
player_plays(player('mario altmann', defender), game(g2), line(l1)).





