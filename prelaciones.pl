% prela(Materia, Prelacion)
prela(ci2691, ci3661). % ci2691 prela a ci3661
prela(ci2525, ci2691).
prela(ci2691, ci3641).
prela(ci3641, ci3725).
prela(ci3725, ci3825). % ci3725 prela a ci3825
prela(ma1111, ci2525).

prelacion_directa(A, B):-
    prela(A, B).

prelacion_total(A, B):-
    prela(A, B).

prelacion_total(A, B):-          % existe C tal que A prela a C y C prela directa o indirectamente a B
    prelacion_directa(A, C),
    prelacion_total(C, B).      