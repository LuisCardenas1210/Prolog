% Definición de entradas 
entrada(antipasto).
entrada(sopa). 
entrada(quesos). 
% Definición de platos principales 
carne(milanesa). 
pescado(pejerrey). 

plato_principal(P) :- carne(P). 
plato_principal(P) :- pescado(P). 

% Definición de postres 
postre(flan). 
postre(helado).

% Definición de comidas completas 
comida(E, P, D) :- entrada(E), plato_principal(P), postre(D). 

% Información calórica 
calorias(antipasto, 250). 
calorias(sopa, 200). 
calorias(quesos, 300). 
calorias(milanesa, 500). 
calorias(pejerrey, 400). 
calorias(flan, 350). 
calorias(helado, 450). 
% Cálculo del valor calórico total 
valor(E, P, D, V) :- 
	calorias(E, X), 
	calorias(P, Y), 
	calorias(D, Z), 
	V is X + Y + Z. 

% Definición de comida equilibrada (<= 800 calorías) 
comida_equilibrada(E, P, D) :- 
	valor(E, P, D, V), 
	V =< 800. 