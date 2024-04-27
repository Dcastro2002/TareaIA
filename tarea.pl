% Relaciones familiares
padre(agustin, ana).
padre(agustin, baltasar).
padre(ana, andres).
padre(ana, bartolome).
padre(ana, carmen).
padre(baltasar, diego).
padre(bartolome, angel).
padre(bartolome, belen).

% Reglas para definir relaciones adicionales
madre(X, Y) :- padre(Z, Y), padre(Z, X), X \= Y.

hermano(X, Y) :- padre(Z, X), padre(Z, Y), X \= Y.

abuelo(X, Y) :- padre(X, Z), padre(Z, Y).

tio(X, Y) :- padre(Z, Y), hermano(X, Z).

sobrino(X, Y) :- tio(Y, X).

% Consultas de ejemplo
% ¿Quiénes son los hermanos de Andrés?
% hermano(andres, Hermano).

% ¿Quiénes son los abuelos de Ángel?
% abuelo(Abuelo, angel).

% ¿Quiénes son los tíos de Ángel?
% tio(Tio, angel).

% ¿Quiénes son los sobrinos de Ana?
% sobrino(Sobrino, ana).
