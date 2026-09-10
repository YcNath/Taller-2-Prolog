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

xp_para_subir(NivelActual, XP) :-
    XP is NivelActual * 30.

vida_restante(VidaMax, Danio, Final) :-
    Final is VidaMax - Danio.

xp_acumulada(0,0).

xp_acumulada(N, Total) :-
    N > 0,
    N1 is N - 1,
    xp_acumulada(N1, Prev),
    Total is Prev + (30 * N).

dano_acumulado(0,0).

dano_acumulado(K, Danio) :-
    K > 0,
    K1 is K - 1,
    dano_acumulado(K1, Prev),
    Danio is Prev + (10 * K).

mismo_nivel(P1, P2) :-
    personaje(P1, N, _),
    personaje(P2, N, _),
    P1 \== P2.

es_balanceado(P) :-
    personaje(P, _, Vida),
    Vida =:= 100.

mas_fuerte(P1,P2) :-
    personaje(P1, Nivel1, _),
    personaje(P2, Nivel2, _),
    Nivel1 > Nivel2.

mismo_objeto(P1, P2, Obj) :-
    inventario(P1, Lista1),
    inventario(P2, Lista2),
    member(Obj, Lista1),
    member(Obj, Lista2).

    