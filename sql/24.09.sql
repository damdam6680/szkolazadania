SELECT MAX(placa_pod), MIN(placa_pod), nazwa, MAX(placa_pod)-MIN(placa_pod) as 'różnica' FROM pracownicy group by nazwa;

SELECT AVG(placa_pod + placa_dod) as 'średnia', nazwa FROM pracownicy  GROUP BY 2 ORDER BY 1 DESC;

SELECT COUNT(nazwa) as 'pełen etat', nazwa FROM pracownicy WHERE nazwa IN('Pełny');

SELECT SUM(placa_pod + placa_dod), ID_ZESP FROM pracownicy GROUP BY 2; 

SELECT ID_ZESP, COUNT(*) FROM pracownicy group by 1 having count(*) > 1 order by 1;

SELECT AVG(placa_pod + placa_dod) as 'średnia', nazwa, COUNT(nazwisko) as 'liczba pracowników', zatrudniony FROM pracownicy GROUP BY 2 HAVING zatrudniony < '2016-01-01';

SELECT id_szefa, nazwisko, MIN(placa_pod + placa_dod) as 'pensja' FROM pracownicy group by 1 order by 3 DESC;

SELECT id_prac FROM pracownicy group by 1 having count(id_prac) >=2;

SELECT MAX(placa_pod + placa_dod) as 'max suma plac', ID_ZESP FROM pracownicy group by 2;

SELECT AVG(placa_pod + placa_dod) as 'średnia placa', ID_ZESP FROM pracownicy group by 2 HAVING count(*) >1;

SELECT ID_ZESP, count(*), placa_pod, placa_dod  FROM pracownicy WHERE nazwa != 'Pełny' group by 1 having AVG(placa_pod + placa_dod) > 4000 order by placa_pod DESC;
