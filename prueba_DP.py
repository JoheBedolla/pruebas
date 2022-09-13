import os

def arch(b):
    archivo = open(b,"r")
    renglon = archivo.readlines()
    #print(renglon[1])
    #archivo2= open("PP.txt","w")
    archivo2= open("DP.txt","a")
    archivo2.write(renglon[1])
    archivo2.close()
    
#arch("45-PP-202001-LOLG701206HSRPZL01_090222_1235.txt")

lista = os.listdir()
print(lista)
'''
lista = ["DP 202001.txt", "DP 202002.txt","DP 202003.txt",
"DP 202004.txt", "DP 202005.txt", "DP 202006.txt",
"DP 202101.txt","DP 202102.txt", "DP 202103.txt",
"DP 202104.txt", "DP 202105.txt"] '''

for archivo in lista:
    if archivo == "prueba_DP.py":
        continue
    else:
        arch(archivo)
    
