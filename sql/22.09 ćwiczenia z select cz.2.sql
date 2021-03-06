﻿select * from pracownicy;
SELECT nazwisko, placa_pod + placa_dod as 'dochod' FROM pracownicy where placa_dod is not null;
SELECT nazwisko, nazwa FROM pracownicy WHERE placa_pod BETWEEN 3000 AND 5000;
SELECT nazwisko FROM pracownicy WHERE nazwa IN('Pełny') AND placa_dod > 1000;
SELECT concat(imie, ' ', nazwisko) as 'pracownik', nazwa FROM pracownicy WHERE nazwa LIKE '1%' OR nazwa LIKE '_e%';
SELECT concat(imie, ' ', nazwisko) as 'pracownik', nazwa, placa_pod FROM pracownicy WHERE (nazwa = 'Pełny' OR nazwa = '1/2') AND (placa_pod < 5000 OR placa_dod IS NOT NULL);
SELECT concat(imie, ' ', nazwisko) as 'pracownik', (placa_pod + IFNULL(placa_dod,0)) * 3 as 'premia', nazwa, zatrudniony FROM pracownicy WHERE zatrudniony < date_sub(now(), interval 4 year);
