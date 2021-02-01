#include <iostream>
#include <math.h>
#include <fstream>
using namespace std;
void pierwsze(int a) {
    for(int i = 0; i < a; i++) {
        if (i > 1 && i % 2 != 0 && i % 3 != 0 || i == 2 || i == 3) {
            cout << i <<",";
        }
    }
}

int main()
{
    
    fstream plik;
    
   double i = 0;
    cout << "podaj a:";
    cin >> i;
     int wynik = 0;
    wynik = sqrt(i);

    
    if (wynik > 1 && wynik % 2 != 0 && wynik % 3 != 0 || wynik == 2 || wynik == 3) {
        cout << "liczba " << wynik << " jest liczba pierwsza";
        plik.open("wynik.txt", ios::out | ios::app);
        plik <<","<<wynik;
        plik.close();
    }
    //pierwsze(10000);
}

