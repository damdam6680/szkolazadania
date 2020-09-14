#include <iostream>
#include <fstream>
#include <string>
using namespace std;

int main(){
	fstream fl;
	string st;
	int a = 0;
	int b = 0;
	fl.open("text.txt", ios::in);
	if(fl.is_open()){
		while(getline(fl,st)){
			cout << st<<endl;
			if(st[st.length()-1] == '1'){
				
			}
			else{
				a++;
			}
			if(st.substr(st.length()-3,3) == "000"){
				b++;	
			} 
		}
		cout << a<<endl;
		cout << b<<endl;
	}
	else{
		cout << "error";
	}	
}
