% Luis Manuel Cárdenas Ibarra
planta(alcanfor).
planta(amapola_amarilla).
planta(amate).
planta(anis).

% Beneficios del Alcanfor
fortalece(alcanfor, corazon).

% Beneficios del anis
fortalece(anis, garganta).
fortalece(anis, intestino).
fortalece(anis, leche_materna).

% Beneficios de la amapola_amarilla
cura(amapola_amarilla, dolor_intestinal).
cura(amapola_amarilla, dolor_abdominal).
cura(amapola_amarilla, dolor_uterino).
cura(amapola_amarilla, diarrea).

% Beneficios del Alcanfor
cura(alcanfor, golpes).
cura(alcanfor, torceduras).
cura(alcanfor, reumatismo).
cura(alcanfor, gota).

% Beneficios de la amate
cura(amate, reumatismo).
cura(amate, cataplasma).

% Beneficios de la anis
cura(anis, colicos).


% Modo de uso Alcafor
modo_uso(alcanfor, aceite).
modo_uso(alcanfor, bolas_alcafor).

% Modo de uso amapola_amarilla
modo_uso(amapola_amarilla, infusion).

% Modo de uso amate
modo_uso(amate, cocimiento).

% Modo de uso anis
modo_uso(anis, infusion).

% Especificar plantas venenosas
es_venenosa(amapola_amarilla).
es_venenosa(amate).

% Especificar que plantas se pueden combinar
es_combinable(amate, [leche_higo, leche_vaca, miel]).
es_combinable(alcanfor, anis).

% REGLAS
% Verifica si la planta tiene sirve para curar o fortalecer
% de ser cierto arroja true
es_util(Planta) :- cura(Planta, _).
es_util(Planta) :- fortalece(Planta, _).

combinacion_segura(P1, P2) :-
    \+ es_venenosa(P1),
    \+ es_venenosa(P2),
    es_combinable(P1,P2).

puede_usarse_para(Planta, Enfermedad) :-
    planta(Planta),
    cura(Planta,Enfermedad).
