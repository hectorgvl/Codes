#para sacar las lineas que incluyen estos numeros

#el que extrae los numeros del archivo de las lineas

with open("B.txt", "r") as target_file:
    target = [i.strip() for i in target_file]
