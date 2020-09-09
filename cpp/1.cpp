#include <iostream>
#include <fstream>
#include <string>
using namespace std;
int main()
{
  fstream file;
  string line;
  int zera = 0;
  int jed = 0;
  int suma = 0;
  file.open("dane.txt",ios::in);
  if(file.is_open()){
    while(getline(file,line))
    {
      jed = 0;
      zera = 0;
      for(int i = 0;i < line.length();i++){
          if(line[i]=='0'){
            zera++;
          }
          else
          {
            jed++;
          }
      }
      if(zera > jed){
        suma++;
      } 
    } 
    cout << suma;
  }
    else
    {
      cout << "error";
    }
    


}