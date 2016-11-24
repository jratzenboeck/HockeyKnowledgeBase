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

line(1).
line(2).
line(3).
line(4).

game(1, line(1), 1, 0).
game(1, line(2), 1, 1).
game(1, line(3), 1, 2).
game(1, line(4), 1, 0).

player_plays(player('philipp lukas'), game(1, line(1), goalsShot, goalsReceived)).
player_plays(player('fabio hofer'), game(1, line(1), goalsShot, goalsReceived)).




