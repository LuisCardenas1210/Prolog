% Hechos de horóscopo 
horoscope(aries,21,3,21,4).
horoscope(tauro,21,4,21,5).
horoscope(geminis,21,5,21,6).
horoscope(cancer,21,6,21,7).
horoscope(leo,21,7,21,8).
horoscope(virgo,21,8,21,9).
horoscope(libra,21,9,21,10).
horoscope(escorpio,21,10,21,11).
horoscope(sagitario,21,11,21,12).
horoscope(capricornio,21,12,21,1).
horoscope(acuario,21,1,21,2).
horoscope(piscis,21,2,21,3).

% Hechos de días por mes
dias_mes(1, 31).  % enero
dias_mes(2, 28).  % febrero 
dias_mes(3, 31).  % marzo
dias_mes(4, 30).  % abril
dias_mes(5, 31).  % mayo
dias_mes(6, 30).  % junio
dias_mes(7, 31).  % julio
dias_mes(8, 31).  % agosto
dias_mes(9, 30).  % septiembre
dias_mes(10, 31). % octubre
dias_mes(11, 30). % noviembre
dias_mes(12, 31). % diciembre

% Regla signo modificada para validar fechas
signo(Dia, Mes, Signo) :-
    dias_mes(Mes, MaxDias),
    Dia >= 1, Dia =< MaxDias,
    horoscope(Signo, D1, M1, D2, M2),
    ( (Mes = M1, Dia >= D1) ; (Mes = M2, Dia =< D2) ).

