#include <iostream>
#include <string>
using namespace std;
int main()
{
    string pali;
    cout << "Podaj palindrom: ";
    cin >> pali;
    bool wynik = true;
    int i = 0;
    int j = pali.length() - 1;
    while (i<j)
    {
        if (pali[i] != pali[j]) {
            wynik = false;
        }
        
        i++;
        j--;
    }
    if (wynik == true) {
        cout << "to jest palindrom";
    }else{ cout << "to nie jest palindrom"; }

}

