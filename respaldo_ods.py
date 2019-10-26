   """ df['ODS4']  = conteo_terminos(texto, [S41])
    df['ODS5'] = conteo_terminos(texto, [S51,S52,S53])
    df['ODS6']  = conteo_terminos(texto, [S61])
    df['ODS7']  = conteo_terminos(texto, [S71, S72])
    df['ODS8'] = conteo_terminos(texto, [S81,S82,S83,S84])
    df['ODS9']  = conteo_terminos(texto, [S91, S92, S93])
    df['ODS10']  = conteo_terminos(texto, [S101, S102, S103, S104])
    df['ODS11'] = conteo_terminos(texto, [S111,S112,S113,S114])
    df['ODS12']  = conteo_terminos(texto, [S121, S122, S123])
    df['ODS13'] = conteo_terminos(texto, [S131,S132])
    df['ODS14']  = conteo_terminos(texto, [S141])
    df['ODS15']  = conteo_terminos(texto, [S151, S152, S153])
    df['ODS16'] = conteo_terminos(texto, [S161,S162,S163])
    df['ODS17']  = conteo_terminos(texto, [S171, S172, S173,S174])
    """
    
    
    ODS4  = carga_archivo('ods4.txt')
ODS5 = carga_archivo('ods5.txt')
ODS6  = carga_archivo('ods6.txt')
ODS7  = carga_archivo('ods7.txt')
ODS8 = carga_archivo('ods8.txt')
ODS9  = carga_archivo('ods9.txt')
ODS10  = carga_archivo('ods10.txt')
ODS11 = carga_archivo('ods11.txt')
ODS12  = carga_archivo('ods12.txt')
ODS13  = carga_archivo('ods13.txt')
ODS14 = carga_archivo('ods14.txt')
ODS15  = carga_archivo('ods15.txt')
ODS16 = carga_archivo('ods16.txt')
ODS17 = carga_archivo('ods17.txt')










#ODS4
S41 = set([' '.join(a) for a in ODS4 if len(a)==1])

#ODS5
S51 = set([' '.join(a) for a in ODS5 if len(a)==1])
S52 = set([' '.join(a) for a in ODS5 if len(a)==2])
S53 = set([' '.join(a) for a in ODS5 if len(a)==3])

#ODS6
S61 = set([' '.join(a) for a in ODS6 if len(a)==1])



#ODS7
S71 = set([' '.join(a) for a in ODS7 if len(a)==1])
S72 = set([' '.join(a) for a in ODS7 if len(a)==2])

#ODS8
S81 = set([' '.join(a) for a in ODS8 if len(a)==1])
S82 = set([' '.join(a) for a in ODS8 if len(a)==2])
S83 = set([' '.join(a) for a in ODS8 if len(a)==3])
S84 = set([' '.join(a) for a in ODS8 if len(a)==4])

#ODS9
S91 = set([' '.join(a) for a in ODS9 if len(a)==1])
S92 = set([' '.join(a) for a in ODS9 if len(a)==2])
S93 = set([' '.join(a) for a in ODS9 if len(a)==3])



#ODS10
S101 = set([' '.join(a) for a in ODS10 if len(a)==1])
S102 = set([' '.join(a) for a in ODS10 if len(a)==2])
S103 = set([' '.join(a) for a in ODS10 if len(a)==3])
S104 = set([' '.join(a) for a in ODS10 if len(a)==4])

#ODS11
S111 = set([' '.join(a) for a in ODS11 if len(a)==1])
S112 = set([' '.join(a) for a in ODS11 if len(a)==2])
S113 = set([' '.join(a) for a in ODS11 if len(a)==3])
S114 = set([' '.join(a) for a in ODS11 if len(a)==4])

#ODS12
S121 = set([' '.join(a) for a in ODS12 if len(a)==1])
S122 = set([' '.join(a) for a in ODS12 if len(a)==2])
S123 = set([' '.join(a) for a in ODS12 if len(a)==3])



#ODS13
S131 = set([' '.join(a) for a in ODS13 if len(a)==1])
S132 = set([' '.join(a) for a in ODS13 if len(a)==2])

#ODS14
S141 = set([' '.join(a) for a in ODS14 if len(a)==1])


#ODS15
S151 = set([' '.join(a) for a in ODS15 if len(a)==1])
S152 = set([' '.join(a) for a in ODS15 if len(a)==2])
S153 = set([' '.join(a) for a in ODS15 if len(a)==3])


#ODS16
S161 = set([' '.join(a) for a in ODS16 if len(a)==1])
S162 = set([' '.join(a) for a in ODS16 if len(a)==2])
S163 = set([' '.join(a) for a in ODS16 if len(a)==3])


#ODS17
S171 = set([' '.join(a) for a in ODS17 if len(a)==1])
S172 = set([' '.join(a) for a in ODS17 if len(a)==2])
S173 = set([' '.join(a) for a in ODS17 if len(a)==3])
S174 = set([' '.join(a) for a in ODS17 if len(a)==4])

