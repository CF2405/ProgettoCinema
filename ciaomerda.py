b= int(input("Inserisci la base:"))
e= int(input("Inserisci l'esponente:"))
ris=1
for i in range(e):
    ris=b*ris
print(f"{b}^{e}={ris}")