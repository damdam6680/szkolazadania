#include <iostream>
#include <cstdlib>

using namespace std;


void wpisz(int tab[]){
	for(int i = 0;i<10;i++){
		tab[i] = rand() % 10;
		cout << tab[i]<<" ";
	}
};


void sort(int temp,int tab[]){
		for(int i = 0;i<10;i++){
		for(int j = i+1;j<10;j++){
			if(tab[i] > tab[j]){
			
			temp = tab[i];
			tab[i] = tab[j];
			tab[j] = temp;
		}
		}
	}
 cout << endl;
};
void wypisz(int tab[]){
	for(int i = 0;i<10;i++){
		cout << tab[i]<<" ";
	}
};
int main(){
	int tab[10];
	int temp = 0;
	wpisz(tab);
	sort(temp,tab);
	wypisz(tab);

}
