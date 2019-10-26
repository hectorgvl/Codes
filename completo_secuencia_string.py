from Bio import SeqIO
def sacasecuencias():
    contenido=raw_input('Dame la ruta desde home del archivo:--->')
    for secuencias in SeqIO.parse(contenido, 'fasta'):
        secu=str(secuencias.seq)
        print secu
        largo=len(secu)
        print largo
        chia=open("mi_secuencia.txt", "w")
        chia.write(secu)
        chia.close()



def divisor(cadena,avance):
    inicio=0
    fin=0+avance
    total=len(cadena)
    print cadena[inicio:fin]+"\n"
    cad_ini=cadena[inicio:fin]+"\n"
    escribe=open("slashed.txt"+, "w")
    escribe.write(cad_ini)
    for i in range (inicio,total):
        inicio=inicio+avance
        fin=fin+avance
        print cadena[inicio:fin]+"\n"
        ultima=cadena[inicio:fin]+"\n"
        escribe.write(ultima)



sacasecuencias()
inter1=raw_input('Dame un conjunto de medidas de nucleotidos separados por comas, por favor:--->')
listota=inter1.split(",")
listota=map(int, listota)
print listota

for gnumero in listota
    divisor(cadena,i)
    counter=0
