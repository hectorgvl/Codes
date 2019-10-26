import numpy         as np
import codecs
import pandas        as pd
import sys
import codecs
from functools       import reduce


def carga_archivo(nom):
    """
    Esta funcion carga el archivo nom y lo regresa como una lista
    donde cada linea se parte a su vez en listas
    """
    f = open(nom,'r').readlines()
    L = list(filter(lambda x: len(x)>0, sorted([x.strip() for x in f])))
    return [x.lower().split() for x in L]

def interseccion_doc_terms(doc, terminos):
    """
    Hace la interseccion del documento seccionado en n-gramas (1,2,3...)
    especificados en el parametro terminos, estos pueden ser de tamaño n
    """
    n = len(list(terminos)[0].split())
    D = [' '.join(doc[i:i+n]) for i in range(len(doc)-(n-1))]
    return set(D).intersection(terminos)

def conteo_terminos(corpus, terminos):
    
    C = [0] * len(corpus)
    n = len(terminos)
    #print("cantidad de terminos {}".format(n))
    s = [0]*n            #por haber 4 conjuntos de terminos
    for i,doc in enumerate(corpus):
        #print(doc)
        for j in range(n):
            s[j] = len(interseccion_doc_terms(doc, terminos[j]))
        #print(s)
        C[i] = reduce(lambda x,y: x+y, s )
    return C

ODS1  = carga_archivo('1_alta.txt')
ODS2 = carga_archivo('2_media.txt')
ODS3  = carga_archivo('3_baja.txt')
ODS4  = carga_archivo('4_alta.txt')
ODS5 = carga_archivo('5_media.txt')
ODS6  = carga_archivo('6_baja.txt')
ODS7  = carga_archivo('7_alta.txt')
ODS8 = carga_archivo('8_media.txt')
ODS9  = carga_archivo('9_baja.txt')
ODS10  = carga_archivo('10_alta.txt')
ODS11 = carga_archivo('11_media.txt')
ODS12  = carga_archivo('12_baja.txt')
ODS13  = carga_archivo('13_alta.txt')
ODS14 = carga_archivo('14_media.txt')
ODS15  = carga_archivo('15_baja.txt')
ODS16 = carga_archivo('16_alta.txt')
ODS17 = carga_archivo('17_media.txt')




#ODS1
ODS1_1 = set([' '.join(a) for a in alta if len(a)==1])
ODS1_2 = set([' '.join(a) for a in alta if len(a)==2])
ODS1_3 = set([' '.join(a) for a in alta if len(a)==3])
T4 = set([' '.join(a) for a in alta if len(a)==4])

#ODS2
ODS2_1 = set([' '.join(a) for a in baja if len(a)==1])
ODS2_2 = set([' '.join(a) for a in baja if len(a)==2])
ODS2_3 = set([' '.join(a) for a in baja if len(a)==3])

#ODS3
ODS3_1 = set([' '.join(a) for a in media if len(a)==1])


#ODS4
T1 = set([' '.join(a) for a in alta if len(a)==1])
T2 = set([' '.join(a) for a in alta if len(a)==2])
T3 = set([' '.join(a) for a in alta if len(a)==3])
T4 = set([' '.join(a) for a in alta if len(a)==4])

#ODS5
B1 = set([' '.join(a) for a in baja if len(a)==1])
B2 = set([' '.join(a) for a in baja if len(a)==2])
B3 = set([' '.join(a) for a in baja if len(a)==3])

#ODS6
M1 = set([' '.join(a) for a in media if len(a)==1])



#ODS7
T1 = set([' '.join(a) for a in alta if len(a)==1])
T2 = set([' '.join(a) for a in alta if len(a)==2])
T3 = set([' '.join(a) for a in alta if len(a)==3])
T4 = set([' '.join(a) for a in alta if len(a)==4])

#ODS8
B1 = set([' '.join(a) for a in baja if len(a)==1])
B2 = set([' '.join(a) for a in baja if len(a)==2])
B3 = set([' '.join(a) for a in baja if len(a)==3])

#ODS9
M1 = set([' '.join(a) for a in media if len(a)==1])




#ODS10
T1 = set([' '.join(a) for a in alta if len(a)==1])
T2 = set([' '.join(a) for a in alta if len(a)==2])
T3 = set([' '.join(a) for a in alta if len(a)==3])
T4 = set([' '.join(a) for a in alta if len(a)==4])

#ODS11
B1 = set([' '.join(a) for a in baja if len(a)==1])
B2 = set([' '.join(a) for a in baja if len(a)==2])
B3 = set([' '.join(a) for a in baja if len(a)==3])

#ODS12
M1 = set([' '.join(a) for a in media if len(a)==1])




#ODS13
T1 = set([' '.join(a) for a in alta if len(a)==1])
T2 = set([' '.join(a) for a in alta if len(a)==2])
T3 = set([' '.join(a) for a in alta if len(a)==3])
T4 = set([' '.join(a) for a in alta if len(a)==4])

#ODS14
B1 = set([' '.join(a) for a in baja if len(a)==1])
B2 = set([' '.join(a) for a in baja if len(a)==2])
B3 = set([' '.join(a) for a in baja if len(a)==3])

#ODS15
M1 = set([' '.join(a) for a in media if len(a)==1])




#ODS16
T1 = set([' '.join(a) for a in alta if len(a)==1])
T2 = set([' '.join(a) for a in alta if len(a)==2])
T3 = set([' '.join(a) for a in alta if len(a)==3])
T4 = set([' '.join(a) for a in alta if len(a)==4])

#ODS17
B1 = set([' '.join(a) for a in baja if len(a)==1])
B2 = set([' '.join(a) for a in baja if len(a)==2])
B3 = set([' '.join(a) for a in baja if len(a)==3])



if __name__=='__main__':
    archivo = sys.argv[1]
    L       = codecs.open(archivo, 'rb', 'cp1252').readlines()
    G = [[l.split('\t')[0],' '.join(l.split('\t')[1:]).strip()] for l in L[1:]]
    df = pd.DataFrame(G, columns=['id','texto'])
    df.set_index('id', inplace=True)
    texto = [ v.split() for v  in df['texto'].values]
    df['alta']  = conteo_terminos(texto, [T1, T2, T3, T4])
    df['media'] = conteo_terminos(texto, [M1])
    df['baja']  = conteo_terminos(texto, [B1, B2, B3])
    df['alta']  = conteo_terminos(texto, [T1, T2, T3, T4])
    df['media'] = conteo_terminos(texto, [M1])
    df['baja']  = conteo_terminos(texto, [B1, B2, B3])
    df['alta']  = conteo_terminos(texto, [T1, T2, T3, T4])
    df['media'] = conteo_terminos(texto, [M1])
    df['baja']  = conteo_terminos(texto, [B1, B2, B3])
    df['alta']  = conteo_terminos(texto, [T1, T2, T3, T4])
    df['media'] = conteo_terminos(texto, [M1])
    df['baja']  = conteo_terminos(texto, [B1, B2, B3])
    df['alta']  = conteo_terminos(texto, [T1, T2, T3, T4])
    df['media'] = conteo_terminos(texto, [M1])
    df['baja']  = conteo_terminos(texto, [B1, B2, B3])
    df['alta']  = conteo_terminos(texto, [T1, T2, T3, T4])
    df['media'] = conteo_terminos(texto, [M1])
    df['ODS17']  = conteo_terminos(texto, [B1, B2, B3])
    
    df.to_csv('df_ods.csv', encoding='utf-8')
