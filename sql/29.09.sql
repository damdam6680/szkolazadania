USE firma4gv2;
SELECT * FROM firma4gv2.pracownicy;
/*zad 1*/
SELECT CONCAT(tp.imie, ' ', tp.nazwisko) as pracownik, te.nazwa, te.PLACA_OD, te.PLACA_DO FROM pracownicy tp JOIN etaty te on (te.nazwa = tp.nazwa);
/*zad 2*/
SELECT tz.ID_ZESP, tz.nazwa, SUM(tp.placa_pod + tp.placa_dod) FROM pracownicy tp JOIN zespoly tz on tz.ID_ZESP = tp.ID_ZESP group by 2 order by 1 asc;
/*zad 3*/
SELECT nazwisko FROM pracownicy  WHERE (placa_pod + placa_dod) > (select (placa_pod + placa_dod) FROM pracownicy WHERE nazwisko = 'Skrzypek');
/*zad 4*/
SELECT tp.nazwisko, tp.nazwa, tz.ID_ZESP, tz.nazwa FROM pracownicy tp LEFT JOIN zespoly tz ON (tz.ID_ZESP = tp.ID_ZESP);
/*zad 5*/
SELECT tp.nazwisko, tp.imie FROM pracownicy tp JOIN zespoly tz ON (tz.ID_ZESP = tp.ID_ZESP) WHERE tz.adres = 'Zawiszy Czarnego 10' ORDER BY 1;
/*zad 6*/
SELECT tp.nazwisko, tz.adres, tz.nazwa FROM pracownicy tp JOIN zespoly tz ON (tz.ID_ZESP = tp.ID_ZESP) WHERE (tp.placa_dod + tp.placa_pod) > 5000;
/*zad 7*/
SELECT tp.nazwisko, tp.nazwa, (tp.placa_pod + tp.placa_dod) as placa, te.PLACA_OD, te.PLACA_DO, tz.nazwa 
FROM pracownicy tp JOIN etaty te ON (te.nazwa = tp.nazwa) JOIN zespoly tz ON (tz.ID_ZESP = tp.ID_ZESP)
WHERE tp.nazwa !='Pełny' order by 3 DESC;
/*zad 8*/
SELECT tp.nazwisko, tp.nazwa, (tp.placa_pod + tp.placa_dod) as placa, tz.nazwa
FROM pracownicy tp JOIN zespoly tz ON (tz.ID_ZESP = tp.ID_ZESP)
WHERE (tp.nazwa = 'Pełny' OR tp.nazwa = '1/2') AND (tp.placa_pod + tp.placa_dod) > 6000;
/*zad 9*/
SELECT tp.nazwisko, tp.id_prac, ts.id_szefa, ts.nazwisko FROM pracownicy tp  JOIN pracownicy ts ON (ts.id_szefa = tp.id_prac);
/*zad 10*/
SELECT tp.nazwisko, tp.id_prac, ts.id_szefa, ts.nazwisko FROM pracownicy tp RIGHT JOIN pracownicy ts ON (ts.id_szefa = tp.id_prac);
/*zad 11*/
SELECT tz.ID_ZESP, tz.nazwa, tp.nazwisko, AVG(tp.placa_pod + tp.placa_dod) as placa FROM zespoly tz LEFT JOIN pracownicy tp ON(tp.ID_ZESP = tz.ID_ZESP) GROUP BY 2 order by 3 ASC;
