personaje('Elara', 5, 100).
personaje('Kael', 3, 80).
personaje('Rin', 7, 120).
personaje('Plum', 5, 100).

mision(m1, 'Bosque de Sombras', 2, 50).
mision(m2, 'Cueva del Dragon', 5, 120).
mision(m3, 'Torre arcana', 7, 200).

inventario('Elara', [espada, escudo, pocion]).
inventario('Kael', [arco, flechas]).
inventario('Rin', [varita, grimorio, pocion, amuleto]).
inventario('Plum', [espada, pocion, amuleto, 'Espada del tiempo']).

requiere(m2, escudo). requiere(m2, pocion).
requiere(m3, grimorio). requiere(m3, pocion).

arma('Espada del tiempo', 50, psiquico).

tiene('Plum', arma('Espada del tiempo', 50, psiquico)).
