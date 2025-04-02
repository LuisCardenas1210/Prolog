% Caso base: cuando llegamos a 0 botellas
sing(0) :-
    write('No more bottles of beer on the wall, no more bottles of beer.'), nl,
    write('Go to the store and buy some more, 99 bottles of beer on the wall.'), nl, nl.

% Caso especial para 1 botella (singular)
sing(1) :-
    write('1 bottle of beer on the wall, 1 bottle of beer.'), nl,
    write('Take one down and pass it around, no more bottles of beer on the wall.'), nl, nl,
    Next is 0,
    sing(Next).

% Caso especial para 2 botellas
sing(2) :-
    write('2 bottles of beer on the wall, 2 bottles of beer.'), nl,
    write('Take one down and pass it around, 1 bottle of beer on the wall.'), nl, nl,
    Next is 1,
    sing(Next).

% Caso general para N > 2
sing(N) :-
    N > 2,
    write(N), write(' bottles of beer on the wall, '), write(N), write(' bottles of beer.'), nl,
    write('Take one down and pass it around, '), 
    Next is N - 1,
    write(Next), write(' bottles of beer on the wall.'), nl, nl,
    sing(Next).

% Predicado principal para iniciar la canción
ninety_nine_bottles :-
    sing(99).