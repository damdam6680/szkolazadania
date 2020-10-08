SELECT concat(NAZWISKO,' ',IMIE) as 'pracownik', PLACA_POD * 12 as 'roczna'FROM firma_4g.pracownicy;
SELECT concat(NAZWISKO,' ',IMIE) as 'pracownik', PLACA_POD * 0.05 as 'dniowka' FROM firma_4g.pracownicy;
SELECT concat(concat(NAZWISKO,' ',IMIE), ' pracuje na etacie: ',ETAT) as 'ZDANIE' FROM firma_4g.pracownicy;
SELECT concat(NAZWISKO,' ',IMIE) as 'pracownik' FROM firma_4g.pracownicy WHERE PLACA_DOD is NULL;
SELECT concat(NAZWISKO,' ',IMIE) as 'pracownik', IFNULL(PLACA_DOD, 0) FROM firma_4g.pracownicy;
SELECT concat(NAZWISKO,' ',IMIE) as 'pracownik', PLACA_POD * 12 + IFNULL(PLACA_DOD,0) as 'DOCHOD' FROM firma_4g.pracownicy;
SELECT DISTINCT(ID_ZESP), concat(NAZWISKO,' ',IMIE) as 'pracownik' FROM firma_4g.pracownicy;
SELECT concat(NAZWISKO,' ',IMIE) as 'pracownik', PLACA_POD * 0.05 as 'dniowka' FROM firma_4g.pracownicy ORDER BY 2 DESC;
SELECT nazwisko, nazwa, placa_pod FROM pracownicy ORDER BY nazwa, placa_pod;
SELECT nazwisko, ID_ZESP FROM pracownicy WHERE PLACA_DOD > PLACA_POD / 10;
https://redhousespice.com/chinese-pork-burger/
