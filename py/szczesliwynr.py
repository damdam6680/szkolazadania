import requests
from bs4 import BeautifulSoup

URL = 'http://www.elektronik.rzeszow.pl/'

page = requests.get(URL)

soup = BeautifulSoup(page.content,'html.parser')

results = soup.find_all('section',class_="happy-numbers")

for results in results:
    dzisjeszynr = results.find('div',class_="number-circle")
    pozostale = results.find('div', class_="number-item active")


    print(dzisjeszynr)
    print("==================================================")
    print(pozostale.text)
    print("==================================================")
    print(results.text)
    