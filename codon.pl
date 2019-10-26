#!/usr/local/bin/perl

	# Este programa tiene dos facetas, la primera es para calcular parametros estructurales en el DNA
	# la seguna es para hacer un fenograma de los datos
	# la segunda parte de este programa requiere que el archivo contenga desde la primera linea, el 
	# nombre del genoma y luego los valores y nunguna linea al final. Esto es porque en el archivo
	# que se genera con la primer parte del programa la primera linea contiene los "headers"
	
#if ( 0 > 1 ) {	# quitar este if para que la primera mitad del programa funcione

	# INICIALICACION DE VARIABLES SUMATORIAS Y PROMEDIOS

	$YRd_SUM = 0;
	$WSd_SUM = 0;
	$MKd_SUM = 0;
	$frecGC_SUM = 0;
	$frecCpG_SUM = 0;
	$M_SUM = 0;
	$Ci3_SUM = 0;
	$Ci2_SUM = 0;
	$H_SUM = 0;
	$V_SUM = 0;
	$L_SUM = 0;
	$I_SUM = 0;
	$M_SUM = 0;
	$Cct_SUM = 0;
	$Cgc_SUM = 0;
	
	$YRd_PROM = 0;
	$WSd_PROM = 0;
	$MKd_PROM = 0;
	$frecGC_PROM = 0;
	$frecCpG_PROM = 0;
	$M_PROM = 0;
	$Ci3_PROM = 0;
	$Ci2_PROM = 0;
	$H_PROM = 0;
	$V_PROM = 0;
	$L_PROM = 0;
	$I_PROM = 0;
	$M_PROM = 0;
	$Cct_PROM = 0;
	$Cgc_PROM = 0;

	$numero_de_genes = 0;

	$UUU = $UUC = "0";
	$UUA = $UUG = $CUU = $CUC = $CUA = $CUG = "0";
	$AUU = $AUC = $AUA = "0";
	$AUG = "0";
	$GUU = $GUC = $GUA = $GUG = "0";
	$UCU = $UCC = $UCA = $UCG = $AGU = $AGC = "0";
	$CCU = $CCC = $CCA = $CCG = "0";
	$ACU = $ACC = $ACA = $ACG = "0";
	$GCU = $GCC = $GCA = $GCG = "0";
	$UAU = $UAC = "0";
	$UAA = $UAG = $UGA = "0";
	$CAU = $CAC = "0";
	$CAA = $CAG = "0";
	$AAU = $AAC = "0";
	$AAA = $AAG = "0";
	$GAU = $GAC = "0";
	$GAA = $GAG = "0";
	$UGU = $UGC = "0";
	$UGG = "0";
	$CGU = $CGC = $CGA = $CGG = $AGA = $AGG = "0";
	$GGU = $GGC = $GGA = $GGG = "0";

	$PheSUM = $PheXp = $PheUUU = $PheUUC = "0";
	$LeuSUM = $LeuXp = $LeuUUA = $LeuUUG = $LeuCUU = $LeuCUC = $LeuCUA = $LeuCUG = "0";	
	$IleSUM = $IleXp = $IleAUU = $IleAUC = $IleAUA = "0";
	$MetSUM = $MetXp = $MetAUG = "0";
	$ValSUM = $ValXp = $ValGUU = $ValGUC = $ValGUA = $ValGUG = "0";
	$SerSUM = $SerXp = $SerUCU = $SerUCC = $SerUCA = $SerUCG = $SerAGU = $SerAGC = "0";
	$ProSUM = $ProXp = $ProCCU = $ProCCC = $ProCCA = $ProCCG = "0";
	$ThrSUM = $ThrXp = $ThrACU = $ThrACC = $ThrACA = $ThrACG = "0";
	$AlaSUM = $AlaXp = $AlaGCU = $AlaGCC = $AlaGCA = $AlaGCG = "0";
	$TyrSUM = $TyrXp = $TyrUAU = $TyrUAC = "0";
	$TerSUM = $TerXp = $TerUAA = $TerUAG = $TerUGA = "0";	
	$HisSUM = $HisXp = $HisCAU = $HisCAC = "0";
	$GlnSUM = $GlnXp = $GlnCAA = $GlnCAG = "0";
	$AsnSUM = $AsnXp = $AsnAAU = $AsnAAC = "0";
	$LysSUM = $LysXp = $LysAAA = $LysAAG = "0";
	$AspSUM = $AspXp = $AspGAU = $AspGAC = "0";
	$GluSUM = $GluXp = $GluGAA = $GluGAG = "0";
	$CysSUM = $CysXp = $CysUGU = $CysUGC = "0";
	$TrpSUM = $TrpXp = $TrpUGG = "0";
	$ArgSUM = $ArgXp = $ArgCGU = $ArgCGC = $ArgCGA = $ArgCGG = $ArgAGA = $ArgAGG = "0";
	$GlySUM = $GlyXp = $GlyGGU = $GlyGGC = $GlyGGA = $GlyGGG = "0";

	$PheUUUTot = $PheUUCTot = "0";
	$LeuUUATot = $LeuUUGTot = $LeuCUUTot = $LeuCUCTot = $LeuCUATot = $LeuCUGTot = "0";	
	$IleAUUTot = $IleAUCTot = $IleAUATot = "0";
	$MetAUGTot = "0";
	$ValGUUTot = $ValGUCTot = $ValGUATot = $ValGUGTot = "0";
	$SerUCUTot = $SerUCCTot = $SerUCATot = $SerUCGTot = $SerAGUTot = $SerAGCTot = "0";
	$ProCCUTot = $ProCCCTot = $ProCCATot = $ProCCGTot = "0";
	$ThrACUTot = $ThrACCTot = $ThrACATot = $ThrACGTot = "0";
	$AlaGCUTot = $AlaGCCTot = $AlaGCATot = $AlaGCGTot = "0";
	$TyrUAUTot = $TyrUACTot = "0";
	$TerUAATot = $TerUAGTot = $TerUGATot = "0";	
	$HisCAUTot = $HisCACTot = "0";
	$GlnCAATot = $GlnCAGTot = "0";
	$AsnAAUTot = $AsnAACTot = "0";
	$LysAAATot = $LysAAGTot = "0";
	$AspGAUTot = $AspGACTot = "0";
	$GluGAATot = $GluGAGTot = "0";
	$CysUGUTot = $CysUGCTot = "0";
	$TrpUGGTot = "0";
	$ArgCGUTot = $ArgCGCTot = $ArgCGATot = $ArgCGGTot = $ArgAGATot = $ArgAGGTot = "0";
	$GlyGGUTot = $GlyGGCTot = $GlyGGATot = $GlyGGGTot = "0";


print ("Dame el nombre del archivo donde esta la lista de genomas que quieras analizar\n");
$archivolista = <STDIN>;
chop ($archivolista);


        open (RESULTS, ">$archivolista.xls")
        	|| die ("No puedo abrir el archivo $archivolista.xls");
        print RESULTS ("genoma\tYRd_PROM\tWSd_PROM\tMKd_PROM\tfrecGC_PROM\tfrecCpG_PROM\tH_PROM\tV_PROM\tL_PROM\tI_PROM\tM_PROM\t0\t");


	print RESULTS ("PheUUUTot\tPheUUCTot\t");
	print RESULTS ("LeuUUATot\tLeuUUGTot\tLeuCUUTot\tLeuCUCTot\tLeuCUATot\tLeuCUGTot\t");
	print RESULTS ("IleAUUTot\tIleAUCTot\tIleAUATot\t");
	print RESULTS ("MetAUGTot\t");
	print RESULTS ("ValGUUTot\tValGUCTot\tValGUATot\tValGUGTot\t");
	print RESULTS ("SerUCUTot\tSerUCCTot\tSerUCATot\tSerUCGTot\tSerAGUTot\tSerAGCTot\t");
	print RESULTS ("ProCCUTot\tProCCCTot\tProCCATot\tProCCGTot\t");
	print RESULTS ("ThrACUTot\tThrACCTot\tThrACATot\tThrACGTot\t");
	print RESULTS ("AlaGCUTot\tAlaGCCTot\tAlaGCATot\tAlaGCGTot\t");
	print RESULTS ("TyrUAUTot\tTyrUACTot\t");
	print RESULTS ("TerUAATot\tTerUAGTot\tTerUGATot\t");
	print RESULTS ("HisCAUTot\tHisCACTot\t");
	print RESULTS ("GlnCAATot\tGlnCAGTot\t");
	print RESULTS ("AsnAAUTot\tAsnAACTot\t");
	print RESULTS ("LysAAATot\tLysAAGTot\t");
	print RESULTS ("AspGAUTot\tAspGACTot\t");
	print RESULTS ("GluGAATot\tGluGAGTot\t");
	print RESULTS ("CysUGUTot\tCysUGCTot\t");
	print RESULTS ("TrpUGGTot\t");
	print RESULTS ("ArgCGUTot\tArgCGCTot\tArgCGATot\tArgCGGTot\tArgAGATot\tArgAGGTot\t");
	print RESULTS ("GlyGGUTot\tGlyGGCTot\tGlyGGATot\tGlyGGGTot\t0\t");


	print RESULTS ("PheUUU\tPheUUC\t");
	print RESULTS ("LeuUUA\tLeuUUG\tLeuCUU\tLeuCUC\tLeuCUA\tLeuCUG\t");
	print RESULTS ("IleAUU\tIleAUC\tIleAUA\t");
	print RESULTS ("MetAUG\t");
	print RESULTS ("ValGUU\tValGUC\tValGUA\tValGUG\t");
	print RESULTS ("SerUCU\tSerUCC\tSerUCA\tSerUCG\tSerAGU\tSerAGC\t");
	print RESULTS ("ProCCU\tProCCC\tProCCA\tProCCG\t");
	print RESULTS ("ThrACU\tThrACC\tThrACA\tThrACG\t");
	print RESULTS ("AlaGCU\tAlaGCC\tAlaGCA\tAlaGCG\t");
	print RESULTS ("TyrUAU\tTyrUAC\t");
	print RESULTS ("TerUAA\tTerUAG\tTerUGA\t");
	print RESULTS ("HisCAU\tHisCAC\t");
	print RESULTS ("GlnCAA\tGlnCAG\t");
	print RESULTS ("AsnAAU\tAsnAAC\t");
	print RESULTS ("LysAAA\tLysAAG\t");
	print RESULTS ("AspGAU\tAspGAC\t");
	print RESULTS ("GluGAA\tGluGAG\t");
	print RESULTS ("CysUGU\tCysUGC\t");
	print RESULTS ("TrpUGG\t");
	print RESULTS ("ArgCGU\tArgCGC\tArgCGA\tArgCGG\tArgAGA\tArgAGG\t");
	print RESULTS ("GlyGGU\tGlyGGC\tGlyGGA\tGlyGGG\n");


	close (RESULTS);  
		

open (ALISTA, "$archivolista") 
	|| die ("No puedo abrir el archivo $archivolista\n");
	@alista = <ALISTA>;
close (ALISTA);

$cadenaalista = join (" ", @alista);
$cadenaalista =~ s/\n//g;
@alista = split (/ /, $cadenaalista);

$totalfiles = @alista;
print ("Los archivos a analizar son $totalfiles\n");
# print ("@alista\n");

$currfile = 0;
foreach $currfile (0 .. $totalfiles -1) {

	@arch_arr = (); 	# a esta variable se asigna todo ...
	
	$archivo1 = $alista[$currfile];
	
	print ("analizando el genoma $alista[$currfile]\n"); 
	open (MYFILE, "$alista[$currfile]") 
		|| die ("No puedo abrir el genoma $alista[$currfile]\n");
	@arch_arr = <MYFILE>;
	
	print("El genoma $alista[$currfile] ha sido abierto exitosamente y asignado a la variable \@arch_arr\n");
	close (MYFILE);
	#---------------------------------------------------------------------------------------------------------
	#---------------------------------------------------------------------------------------------------------
	
	#------------------------------------------------------------------
	# primero va a borrar los archivos de resultados
	#open (RESULTS, ">R1_DNAbin")
	#          || die ("No puedo abrir el archivo R1_DNAbin");
	#close (RESULTS);
	
	#open (RESULTS, ">R2_DNAbin")
	#         || die ("No puedo abrir el archivo R2_DNAbin");
	#close (RESULTS);  
	
	#open (RESULTS, ">lista_YRd")
	#	||  die ("No puedo abrir el archivo lista_YRd");
	#close (RESULTS);
	
	#open (RESULTS, ">lista_WSd")
	#	||  die ("No puedo abrir el archivo lista_WSd");
	#close (RESULTS);
	
	#open (RESULTS, ">lista_MKd")
	#       ||  die ("No puedo abrir el archivo lista_KMd");
	#close (RESULTS); 
	
	#open (RESULT, ">Histo_YRd") 
	#       || die ("No puedo abrir el archivo Histo_YRd");
	#close (RESULT);
	
	#open (RESULT, ">Histo_WSd") 
	#       || die ("No puedo abrir el archivo Histo_WSd");
	#close (RESULT);
	
	#open (RESULT, ">Histo_MKd") 
	#       || die ("No puedo abrir el archivo Histo_MKd");
	#close (RESULT);
	
	#------------------------------------------------------------------
	
	# ahora va a abrir el archivo donde estan las secuencias fasta
	# y lo va a contar el n£mero de secuencias que hay en ‚l
	#print ("Dame el nombre del archivo que quieras analizar\n");
	#$archivo1 = <STDIN>;
	#chop ($archivo1);
	
	#print ("Dime de que tamanio tienen que ser los intervalos del histograma\n");
	#$espacio = <STDIN>;
	#chop ($espacio);
	
	
	#open (MYFILE, "$archivo1") || die ("No puedo abrir el archivo $archivo1\n");
	
	
	#while (<MYFILE>) {
	#	if (/^>.+/) {
	#		$numseq++;
	#	}
	#}
	
	#open (RESULTADOS, ">$archivo1.R3");
	#	print RESULTADOS ("El n£mero de secuencias que hay en el archivo ");
	#	print RESULTADOS ("$archivo1 son $numseq\n");
	#close (RESULTADOS);
	#close (MYFILE);
	#------------------------------------------------------------------
	#open (MYFILE, "$archivo1") || die ("No puedo abrir el archivo $archivo1\n");
	#@arch_arr = <MYFILE>;
	
	$lugares = @arch_arr;
	$fin = ("finaldelarreglochingao");
	$arch_arr[$lugares + 1] = $fin;
	
	
	$cuenta = 0;
	while ($cuenta < @arch_arr) {
	        if ($arch_arr[$cuenta] =~ /^>.+/) {
	                $cadena_nom = $&;
	                $cadena = "";
	                $termina_cadena = 0;
			$cuentame = $cuenta;
			while (!$termina_cadena) {
				$linea_temp = $arch_arr[$cuentame+1];
				if ($linea_temp =~ /finaldelarreglochingao/) {
					$termina_cadena = 1;
				} elsif ($linea_temp !~ /^>.+/) {
					$cadena = $cadena.$linea_temp;
				} elsif ($linea_temp =~ /^>.+/) {
					$termina_cadena = 1;
				} 
				$cuentame++;
			}
	        
	
		$cadena =~ s/[\t\n ]+//gs;
	
		#fin programa Luis	
		#coneccion entre el programa de Luis y el de Claudia
	
		@cadena2 = ();
		$todo = ();	
		$todo = $cadena;
		
		$todo =~ tr/ATGC/atgc/;
		
		@cadena2 = split (//, $todo);
		
	
	
		#CALCULO FRECUENCIA DE GC  
		
		for ($i = 0;  $i <= $#cadena2 ; $i++){
		
		     if($cadena2[$i] eq "c") {
		     	$ces++;
		     }
		     
		     if($cadena2[$i] eq "g") {
		     	$ges++;
		     }  
		     
		     if($cadena2[$i] eq "t") {
		     	$tes++;
		     } 
		     
		     if($cadena2[$i] eq "a") {
		     	$aas++;
		     } 
	   
		}    
		
		$cesges = $ces + $ges;
		
		$frecGC = $cesges/($#cadena2+1);
		
	
		
		#CALCULO FRECUENCIA DE CpG
		
		for ($i = 0;  $i <= $#cadena2 ; $i++){
		
		     if($cadena2[$i] eq "c") {
		        if ($cadena2[$i+1] eq "g") {
				$CpG++;
			}
		     }
		}    
			
		$frecCpG = $CpG/($#cadena2+1); 
		
		
			
		#CALCULOS Fc (fi) y  Ft (fj), y Fa y Fg
	
		#N (numero total de bases)
		$N = $#cadena2; 
		
		#calculo Ncuadrada
		$Ncua = $N**2;	
		
		#calculo Fc 
		#Nc (numero de citocinas)
		$Nc = $ces;	#REDUNDANTE
		
		#Fc (frecuencia de citocinas)
		$fc = $ces/$N;
		
		#calculo Ft
		#Nt (numero de timinas) 
		$Nt = $tes;	#REDUNDANTE
		
		# Ft (frecuencia de timinas)
		$ft = $tes/$N;
	
		# Ft (frecuencia de adeninas)
		$fa = $aas/$N;
	
		# Ft (frecuencia de guaninas)
		$fg = $ges/$N;		 
		
		
		# CALCULOS fij 
		
		#calculo Ftt 
		#Ntt (numero de pares de timinas)
		$Ntt = 0;	
		for($i=0; $i<=$#cadena2; $i++){
		    if($cadena2[$i] eq "t"){
		       if($cadena2[$i+1] eq "t"){
		          $Ntt++;
		       }
		   }
		}
	
		#Ftt (frecuencia de pares de timinas)
		#$ftt = $Ntt/$Ncua; Ojo este lo voy a cometar por el momento porque segun yo no tiene que ser al cuadrado
		$ftt = $Ntt/$N;
					 	 
		#calculo Ftc
		#Ntc (numero de timinas seguidas de citosinas)
		$Ntc = 0;	
		for($i=0; $i<=$#cadena2; $i++){
		    if($cadena2[$i] eq "t"){
		       if($cadena2[$i+1] eq "c"){
		          $Ntc++;
		       }
		   }
		}	
	
		#Ftc (frec de timinas seguidas de citosinas)
		#$ftc = $Ntc/$Ncua; Ojo este lo voy a cometar por el momento porque segun yo no tiene que ser al cuadrado
		$ftc = $Ntc/$N;
		
		#calculo Fct
		#Nct(numero de citosinas seguidas de timinas)
		$Nct = 0;	
		for($i=0; $i<=$#cadena2; $i++){
		    if($cadena2[$i] eq "c"){
		       if($cadena2[$i+1] eq "t"){
		          $Nct++;
		       }
		   }
		}	
	
		#Fct(frecuencia de timinas seguidas de citosinas)
		#$fct = $Nct/$Ncua; Ojo este lo voy a cometar por el momento porque segun yo no tiene que ser al cuadrado
		$fct = $Nct/$N;
		
		#CAlCULO Ncc
		#(numero de pares de citosinas)
		$Ncc = 0;
		for($i=0; $i<=$#cadena; $i++){
		    if($cadena[$i] eq "c"){
		       if($cadena[$i+1] eq "c"){
		          $Ncc++;
		       }
		   }
		}
		
		#calculo Fcc 
		#fij para Ncc (frecuencia de pares de citosinas)	
		#$fcc = $Ncc/$Ncua; Ojo este lo voy a cometar por el momento porque segun yo no tiene que ser al cuadrado
		$fcc = $Ncc/$N;
		
		#calculo de Naa
			#Naa(numero de pares de adeninas)
		$Naa = 0;	
		for($i=0; $i<=$#cadena2; $i++){
		    if($cadena2[$i] eq "a"){
		       if($cadena2[$i+1] eq "a"){
		          $Naa++;
		       }
		   }
		}
		
		#calculo de Faa
		#Faa(frecuencia pares de adeninas)
		#$faa = $Naa/$Ncua; Ojo este lo voy a cometar por el momento porque segun yo no tiene que ser al cuadrado
		$faa = $Naa/$N;
				 	 
		#calculo Nag
		#Nag (numero de adeninas seguidas de guaninas)
		$Nag = 0;	
		for($i=0; $i<=$#cadena2; $i++){
		    if($cadena2[$i] eq "a"){
		       if($cadena2[$i+1] eq "g"){
		          $Nag++;
		       }
		   }
		}		

		#calculo Fag
		#Fag (frec de adeninas seguidas de guaninas)
		#$fag = $Nag/$Ncua; Ojo este lo voy a cometar por el momento porque segun yo no tiene que ser al cuadrado
		$fag = $Nag/$N;
				
		#calculo Ngg
		#Ngg (numero de pares de guaninas)
		$Ngg = 0;
		for($i=0; $i<=$#cadena2; $i++){
		    if($cadena2[$i] eq "g"){
		       if($cadena2[$i+1] eq "g"){
		          $Ngg++;
		       }
		   }
		}
			
		#calculo Fgg
		#Fgg (frec de pares de guaninas)
		#$fgg = $Ngg/$Ncua; Ojo este lo voy a cometar por el momento porque segun yo no tiene que ser al cuadrado
		$fgg = $Ngg/$N;
	
		#calculo Ngc
		#Ngc (numero de guaninas seguidas de citosinas)
		$Ngc = 0;
		for($i=0; $i<=$#cadena2; $i++){
		    if($cadena2[$i] eq "g"){
		       if($cadena2[$i+1] eq "c"){
		          $Ngc++;
		       }
		   }
		}
			
		#calculo Fgc
		#Fgc (frec de pares de guaninas)
		#$fgc = $Ngc/$Ncua; Ojo este lo voy a cometar por el momento porque segun yo no tiene que ser al cuadrado
		$fgc = $Ngc/$N;	
		
		#calculo Nca
		#Nca (numero de citosinas seguidas de adeninas)
		$Nca = 0;
		for($i=0; $i<=$#cadena2; $i++){
		    if($cadena2[$i] eq "c"){
		       if($cadena2[$i+1] eq "a"){
		          $Nca++;
		       }
		   }
		}
			
		#calculo Fca
		#Fca (frec de citosinas seguidas de adeninas)
		#$fca = $Nca/$Ncua; Ojo este lo voy a cometar por el momento porque segun yo no tiene que ser al cuadrado
		$fca = $Nca/$N;	
		
		#calculo Ncg
		#Ncg (numero de citosinas seguidas de guaninas)
		$Ncg = 0;
		for($i=0; $i<=$#cadena2; $i++){
		    if($cadena2[$i] eq "c"){
		       if($cadena2[$i+1] eq "g"){
		          $Ncg++;
		       }
		   }
		}
			
		#calculo Fcg
		#Fcg (frec de citosinas seguidas de guaninas)
		#$fcg = $Ncg/$Ncua; Ojo este lo voy a cometar por el momento porque segun yo no tiene que ser al cuadrado
		$fcg = $Ncg/$N;			

		#calculo Nta
		#Nta (numero de timinas seguidas de adeninas)
		$Nta = 0;
		for($i=0; $i<=$#cadena2; $i++){
		    if($cadena2[$i] eq "t"){
		       if($cadena2[$i+1] eq "a"){
		          $Nta++;
		       }
		   }
		}
			
		#calculo Fta
		#Fta (frec de timinas seguidas de adeninas)
		#$fta = $Nta/$Ncua; Ojo este lo voy a cometar por el momento porque segun yo no tiene que ser al cuadrado
		$fta = $Nta/$N;	
	
		#calculo Ntg
		#Ntg (numero de timinas seguidas de guaninas)
		$Ntg = 0;
		for($i=0; $i<=$#cadena2; $i++){
		    if($cadena2[$i] eq "t"){
		       if($cadena2[$i+1] eq "g"){
		          $Ntg++;
		       }
		   }
		}
			
		#calculo Ftg
		#Ftg (frec de timinas seguidas de guaninas)
		#$ftg = $Ntg/$Ncua; Ojo este lo voy a cometar por el momento porque segun yo no tiene que ser al cuadrado
		$ftg = $Ntg/$N;		
	
		#calculo Nga
		#Nga (numero de guainas seguidas de adeninas)
		$Nga = 0;
		for($i=0; $i<=$#cadena2; $i++){
		    if($cadena2[$i] eq "g"){
		       if($cadena2[$i+1] eq "a"){
		          $Nga++;
		       }
		   }
		}
			
		#calculo Fga
		#Fga (frec de guaninas seguidas de adeninas)
		#$fga = $Nga/$Ncua; Ojo este lo voy a cometar por el momento porque segun yo no tiene que ser al cuadrado
		$fga = $Nga/$N;		
	
				
		#calculo Nac
		#Nac (numero de adeninas seguidas de citosinas)
		$Nac = 0;
		for($i=0; $i<=$#cadena2; $i++){
		    if($cadena2[$i] eq "a"){	
		       if($cadena2[$i+1] eq "c"){
		          $Nac++;
		       }
		   }
		}	
			
		#calculo Fac
		#Fac (frec de adeninas seguidas de citosinas)
		#$fac = $Nac/$Ncua; Ojo este lo voy a cometar por el momento porque segun yo no tiene que ser al cuadrado
		$fac = $Nac/$N;					
	
		#calculo Nat
		#Nat (numero de adeninas seguidas de timinas)
		$Nat = 0;
		for($i=0; $i<=$#cadena2; $i++){
		    if($cadena2[$i] eq "a"){
		       if($cadena2[$i+1] eq "t"){
		          $Nat++;
		       }
		   }
		}
			
		#calculo Fat
		#Fat (frec de adeninas seguidas de timinas)
		#$fat = $Nat/$Ncua; Ojo este lo voy a cometar por el momento porque segun yo no tiene que ser al cuadrado
		$fat = $Nat/$N;
	
		#calculo Ngt
		#Ngt (numero de guaninas seguidas de timinas)
		$Ngt = 0;
		for($i=0; $i<=$#cadena2; $i++){
		    if($cadena2[$i] eq "g"){
		       if($cadena2[$i+1] eq "t"){
		          $Ngt++;
		       }
		   }
		}
			
		#calculo Fgt
		#Fgt (frec de guaninas seguidas de timinas)
		#$fgt = $Ngt/$Ncua; Ojo este lo voy a cometar por el momento porque segun yo no tiene que ser al cuadrado
		$fgt = $Ngt/$N;
	
	
		#CALCULOS Cij: Ctt, Ctc, Cct
			
		#calculo Ctt
		$Ctt = ($ftt-($ft*$ft));
		
		#calculo Ctc
		$Ctc = ($ftc-($ft*$fc));
			
		#calculo Cct
		$Cct = ($fct-($fc*$ft));
		
		#calculo Caa
		$Caa = ($faa-($fa*$fa));
	
		#calculo Cgc
		$Cgc = ($fgc-($fg*$fc));
		
		#calculo Ccc
		$Ccc = ($fcc-($fc*$fc));

		#calculo Cag
		$Cag = ($fag-($fa*$fg));		

		#calculo Cgg
		$Cgg = ($fgg-($fg*$fg));
		
		#calculo Cca
		$Cca = ($fca-($fc*$fa));		

		#calculo Ccg
		$Ccg = ($fcg-($fc*$fg));
		
		#calculo Cta
		$Cta = ($fta-($ft*$fa));
		
		#calculo Ctg
		$Ctg = ($ftg-($ft*$fg));
				
		#calculo Cga
		$Cga = ($fga-($fg*$fa));
		
		#calculo Cac
		$Cac = ($fac-($fa*$fc));		
		
		#calculo Cat
		$Cat = ($fat-($fa*$ft));
		
		#calculo Cgt
		$Cgt = ($fgt-($fg*$ft));
		
		
		#INDICES Ci
		
		#$Ci3 = ((1/3) * ($Cct + $Ctc + $Ctt));
		#$Ci2 = ((1/2) * ($Caa + $Ctt));
		
		
		#CALUULO DE M PARA CADA GENOMA

		$M = $Ctt + $Ctc + $Cct;

	
		#CALCULO de L, V, H, I
		
		$L  = (($Ccc + $Cct + $Ctt + $Caa + $Cag + $Cgg)/6);
		
		$V = (($Cca + $Ccg + $Cta + $Ctg)/4);
		
		$H = (($Ctc + $Cgc + $Cga)/3);
		
		$I = (($Cac + $Cat + $Cgt)/3);
	
	
		
		# Calculo de dyr, dws y dmk
			
		$cadena_YR = $cadena_WS = $cadena_MK = $cadena;
		# La variable $cadena conitene al gen
		
		$cadena_YR =~ s/[AG]/R/isg;
	        $cadena_YR =~ s/[TC]/Y/isg;
	        $cadena_WS =~ s/[CG]/S/isg;
	        $cadena_WS =~ s/[AT]/W/isg;
		$cadena_MK =~ s/[AC]/M/isg;
	        $cadena_MK =~ s/[GT]/K/isg;  
	
	        @arreglo_YR = split (//, $cadena_YR);
	        @arreglo_WS = split (//, $cadena_WS);
	        @arreglo_MK = split (//, $cadena_MK); 
	
	                $contadorYR = 1;
	                while ($contadorYR <= @arreglo_YR) {
	                        if ($arreglo_YR[$contadorYR] eq Y &&
	                            $arreglo_YR[$contadorYR-1] eq Y) {
	                                        $YR00 +=1;
	                        } elsif ($arreglo_YR[$contadorYR] eq R &&
	                                 $arreglo_YR[$contadorYR-1] eq R) {
	                                        $YR11 +=1;
	                        } elsif ($arreglo_YR[$contadorYR] eq Y &&
	                                 $arreglo_YR[$contadorYR-1] eq R) {
	                                        $YR10 +=1;
	                        } elsif ($arreglo_YR[$contadorYR] eq R &&
	                                 $arreglo_YR[$contadorYR-1] eq Y) {
	                                        $YR01 +=1;
	                        }
	                        $contadorYR++;
	                }
	                                      
	                $contYR = 0;
	                while ($contYR <= @arreglo_YR) {
	                        if ($arreglo_YR[$contYR] eq Y) {
	                                $YRN0 +=1;
	                        } elsif ($arreglo_YR[$contYR] eq R) {
	                                $YRN1 +=1;
	                        }                               # linea 100
	                        $contYR++;
	                }
	   
	                $contadorWS = 1;
	                while ($contadorWS <= @arreglo_WS) {
	                        if ($arreglo_WS[$contadorWS] eq W &&
	                            $arreglo_WS[$contadorWS-1] eq W) {
	                                        $WS00 +=1;
	                        } elsif ($arreglo_WS[$contadorWS] eq S &&
	                                 $arreglo_WS[$contadorWS-1] eq S) {
	                                        $WS11 +=1;
	                        } elsif ($arreglo_WS[$contadorWS] eq W &&
	                                 $arreglo_WS[$contadorWS-1] eq S) {
	                                        $WS10 +=1;
	                        } elsif ($arreglo_WS[$contadorWS] eq S &&
	                                 $arreglo_WS[$contadorWS-1] eq W) {
	                                        $WS01 +=1;
	                        }
	                        $contadorWS++;
	                }
	                                  
	                $contWS = 0;
	                while ($contWS <= @arreglo_WS) {
	                        if ($arreglo_WS[$contWS] eq W) {
	                                $WSN0 +=1;
	                        } elsif ($arreglo_WS[$contWS] eq S) {
	                                $WSN1 +=1;
	                        }
	                        $contWS++;
	                }
	                    
	                $contadorMK = 1;
	                while ($contadorMK <= @arreglo_MK) {
	                        if ($arreglo_MK[$contadorMK] eq M &&
	                            $arreglo_MK[$contadorMK-1] eq M) {
	                                        $MK00 +=1;
	                        } elsif ($arreglo_MK[$contadorMK] eq K &&
	                                 $arreglo_MK[$contadorMK-1] eq K) {
	                                        $MK11 +=1;
	                        } elsif ($arreglo_MK[$contadorMK] eq K &&
	                                 $arreglo_MK[$contadorMK-1] eq M) {
	                                        $MK10 +=1;
	                        } elsif ($arreglo_MK[$contadorMK] eq M &&
	                                 $arreglo_MK[$contadorMK-1] eq K) {
	                                        $MK01 +=1;
	                        }
	                        $contadorMK++;
	                }
	                                   
	                $contMK = 0;                        
	                while ($contMK <= @arreglo_MK) {
	                        if ($arreglo_MK[$contMK] eq M) {
	                                $MKN0 +=1;
	                        } elsif ($arreglo_MK[$contMK] eq K) {
	                                $MKN1 +=1;
	                        }
	                        $contMK++;
	                }
	                   
	
	        $WSN00N11 = $WS00 * $WS11;
	        $WSN10N01 = $WS01 * $WS10;
	        $WSN0N1 = $WSN0 * $WSN1;
	        $WSd = ($WSN00N11 - $WSN10N01)/$WSN0N1;
	
	        $YRN00N11 = $YR00 * $YR11;
	        $YRN10N01 = $YR01 * $YR10;
	        $YRN0N1 = $YRN0 * $YRN1;
	        $YRd = ($YRN00N11 - $YRN10N01)/$YRN0N1;
	
	        $MKN00N11 = $MK00 * $MK11;	
	        $MKN10N01 = $MK01 * $MK10;
	        $MKN0N1 = $MKN0 * $MKN1;
	        $MKd = ($MKN00N11 - $MKN10N01)/$MKN0N1;



		#---------------------------------------------------------------------------------------------------------
		# CALCULO DEL USO DE CODONES

		$cadenaCOD = $cadena;
		$cadenaCOD =~ s/[\t\n ]+//gs;
		$cadenaCOD =~ tr/ATCG/atcg/;
		$cadenaCOD =~ tr/atcg/aucg/;
		@cadenaCOD = split (//, $cadenaCOD);
		$n_de_bases = @cadenaCOD;
		$residuo = $n_de_bases % 3;

				if ($residuo > 0) {
					$genes_RNA++;
				} elsif ($residuo == 0) {
					$genes_proteina++;
					#$cadena_global = $cadena_global.$cadena;
					$pos = 0;
					for ($pos = 0; $pos <= $n_de_bases - 3; $pos = $pos + 3) {
		
						$primero = $cadenaCOD[$pos];
						$segundo = $cadenaCOD[$pos+1];
						$tercero = $cadenaCOD[$pos+2];
						
						$codon = $primero.$segundo.$tercero;				
						if ($codon eq uuu) {
							$UUU++;
						} elsif ($codon eq uuc) {
							$UUC++;
						} elsif ($codon eq uua) {
							$UUA++;
						} elsif ($codon eq uug) {
							$UUG++;
						} elsif ($codon eq cuu) {
							$CUU++;
						} elsif ($codon eq cuc) {
							$CUC++;
						} elsif ($codon eq cua) {
							$CUA++;
						} elsif ($codon eq cug) {
							$CUG++;
						} elsif ($codon eq auu) {	
							$AUU++;
						} elsif ($codon eq auc) {
							$AUC++;
						} elsif ($codon eq aua) {
							$AUA++;
						} elsif ($codon eq aug) {
							$AUG++;
						} elsif ($codon eq guu) {
							$GUU++;
						} elsif ($codon eq guc) {
							$GUC++;
						} elsif ($codon eq gua) {
							$GUA++;
						} elsif ($codon eq gug) {
							$GUG++;
						} elsif ($codon eq ucu) {
							$UCU++;
						} elsif ($codon eq ucc) {
							$UCC++;
						} elsif ($codon eq uca) {
							$UCA++;
						} elsif ($codon eq ucg) {
							$UCG++;
						} elsif ($codon eq ccu) {
							$CCU++;
						} elsif ($codon eq ccc) {
							$CCC++;
						} elsif ($codon eq cca) {
							$CCA++;
						} elsif ($codon eq ccg) {
							$CCG++;
						} elsif ($codon eq acu) {
							$ACU++;
						} elsif ($codon eq acc) {
							$ACC++;
						} elsif ($codon eq aca) {
							$ACA++;
						} elsif ($codon eq acg) {
							$ACG++;
						} elsif ($codon eq gcu) {
							$GCU++;
						} elsif ($codon eq gcc) {
							$GCC++;
						} elsif ($codon eq gca) {
							$GCA++;
						} elsif ($codon eq gcg) {
							$GCG++;
						} elsif ($codon eq uau) {
							$UAU++;
						} elsif ($codon eq uac) {
							$UAC++;
						} elsif ($codon eq uaa) {
							$UAA++;
						} elsif ($codon eq uag) {
							$UAG++;
						} elsif ($codon eq cau) {
							$CAU++;
						} elsif ($codon eq cac) {
							$CAC++;
						} elsif ($codon eq caa) {
							$CAA++;
						} elsif ($codon eq cag) {
							$CAG++;
						} elsif ($codon eq aau) {	
							$AAU++;
						} elsif ($codon eq aac) {
							$AAC++;
						} elsif ($codon eq aaa) {
							$AAA++;
						} elsif ($codon eq aag) {
							$AAG++;
						} elsif ($codon eq gau) {
							$GAU++;
						} elsif ($codon eq gac) {
							$GAC++;
						} elsif ($codon eq gaa) {
							$GAA++;
						} elsif ($codon eq gag) {
							$GAG++;
						} elsif ($codon eq ugu) {
							$UGU++;
						} elsif ($codon eq ugc) {
							$UGC++;
						} elsif ($codon eq uga) {
							$UGA++;
						} elsif ($codon eq ugg) {
							$UGG++;
						} elsif ($codon eq cgu) {
							$CGU++;
						} elsif ($codon eq cgc) {
							$CGC++;
						} elsif ($codon eq cga) {
							$CGA++;
						} elsif ($codon eq cgg) {
							$CGG++;
						} elsif ($codon eq agu) {
							$AGU++;
						} elsif ($codon eq agc) {
							$AGC++;
						} elsif ($codon eq aga) {
							$AGA++;
						} elsif ($codon eq agg) {
							$AGG++;
						} elsif ($codon eq ggu) {
							$GGU++;	
						} elsif ($codon eq ggc) {
							$GGC++;
						} elsif ($codon eq gga) {
							$GGA++;
						} elsif ($codon eq ggg) {
							$GGG++;
						}
					} # se cierra el for
				} # aqui se cierra el if de RSCU

				# aqui se inicializan las variables
				@cadenaCOD = "";


		#---------------------------------------------------------------------------------------------------------

	  
	                #open (RESULTS, ">>$archivo1.R1")
	                #        || die ("No puedo abrir el archivo $archivo1.R1");
	                #	print RESULTS ("$cadena_nom\t $YRd\t $WSd\t $MKd\n");
	                #close (RESULTS);
			#AUQUI AQUI AQUI AQUI AQUI AQUI000000000000000000000000000000000000000000000
			
			#AQUI SE IMPRIME LOS VALORES PARA CADA GEN DENTRO DE CADA GENOMA 
	                #open (RESULTS, ">>$archivo1.Re")
	                #        || die ("No puedo abrir el archivo $archivo1.Re");
	                #	print RESULTS ("$YRd\t$WSd\t$MKd\t$frecGC\t$frecCpG\t$M\t$Ntt\t$ftt\t$Ctt\t$Ntc\t$ftc\t$Ctc\t\n");
			#close (RESULTS);  
			
	
			#open (RESULTS, ">>lista_YRd")
			#	||  die ("No puedo abrir el archivo lista_YRd");
			#	print RESULTS ("$YRd\n");
			#close (RESULTS);
	
	                #open (RESULTS, ">>lista_WSd")
	                #        ||  die ("No puedo abrir el archivo lista_WSd");
	                #        print RESULTS ("$WSd\n");
	                #close (RESULTS);        	

	                #open (RESULTS, ">>lista_MKd")
	                #        ||  die ("No puedo abrir el archivo lista_MKd");
	                #        print RESULTS ("$MKd\n");
	                #close (RESULTS);        
	
		
		# SUMATORIAS
		
		$YRd_SUM = $YRd_SUM + $YRd;
		$WSd_SUM = $WSd_SUM + $WSd;
		$MKd_SUM = $MKd_SUM + $MKd;
		$frecGC_SUM = $frecGC_SUM + $frecGC;
		$frecCpG_SUM = $frecCpG_SUM + $frecCpG;
		$Ci3_SUM = $Ci3_SUM + $Ci3;
		$Ci2_SUM = $Ci2_SUM + $Ci2;
		$H_SUM = $H_SUM + $H;
		$V_SUM = $V_SUM + $V;
		$L_SUM = $L_SUM + $L;
		$I_SUM = $I_SUM + $I;
		$M_SUM = $M_SUM + $M;
		$Cct_SUM = $Cct_SUM + $Cct;
		$Cgc_SUM = $Cgc_SUM + $Cgc;
		
		$numero_de_genes = $numero_de_genes +1;
		
		
	
		# INICIALIZACION DE VARIABLES
		
		$ces = $ges = $tes = $aas = $CpG = $frecGC = $frecCpG = $cesges = 0;
		
		$N = $Nc = $Nt = $Ncua = $fc = $ft = $fa = $fg = 0;
		
		$Ntt = $ftt = $Ntc = $ftc = $Nta = $fta = $Ntg = $ftg = 0;
		
		$Nct = $fct = $Ncc = $fcc = $Nca = $fca = $Ncg = $fcg = 0;
		
		$Naa = $faa = $Nag = $fag = $Nac = $fac = $Nat = $fat = 0;
		
		$Ngg = $fgg = $Ngc = $fgc = $Nga = $fga = $Ngt = $fgt = 0;

		$Ctt = $Ctc = $Cct = $Caa = $Cgc = 0;
		
		$Ccc = $Cag = $Cgg = $Cca = $Ccg = $Cta = 0;

		$Ctg = $Cga = $Cac = $Cat = $Cgt = 0;
		
		$M = $H = $V = $L = $I = 0;
		
		$Ci3 = $Ci2 = 0;
		
	        $YR00 = $YR11 = $YR10 = $YR01 = 0;
	        $YRN00N11 = $YRN10N01 = 0;
	        $YRN0 = $YRN1 = 0;
	        $YRN0N1 = 0;
		$YRd = 0;
	
	        $WS00 = $WS11 = $WS10 = $WS01 = 0;
	        $WSN00N11 = $WSN10N01 = 0;
	        $WSN0 = $WSN1 = 0;
	        $WSN0N1 = 0;
		$WSd = 0;	
	
	        $MK00 = $MK11 = $MK10 = $MK01 = 0;
	        $MKN00N11 = $MKN10N01 = 0;
	        $MKN0 = $MKN1 = 0;
	        $MKN0N1 = 0;
		$MKd = 0;                 
	  
		$cadena_YR = $cadena_WS = $cadena_MK = ();
		@arreglo_YR = @arreglo_WS = @arreglo_MK = @arreglo_vacio;
	
		} # se cierra el if, con este if se termina un gen del archivo
			# print ("Se termino el ciclo de while\n");
		$cuenta++;
	} # se cierra el while, con este while se contabiliza todos los genes de un genoma
	#close (MYFILE); 
	
	# CALCULO DE PROMEDIOS
	
	$YRd_PROM = $YRd_SUM / $numero_de_genes;
	$WSd_PROM = $WSd_SUM / $numero_de_genes;
	$MKd_PROM = $MKd_SUM / $numero_de_genes;
	$frecGC_PROM = $frecGC_SUM / $numero_de_genes;
	$frecCpG_PROM = $frecCpG_SUM / $numero_de_genes;
	$Ci3_PROM = $Ci3_SUM / $numero_de_genes;
	$Ci2_PROM = $Ci2_SUM / $numero_de_genes;
	$H_PROM = $H_SUM / $numero_de_genes;
	$V_PROM = $V_SUM / $numero_de_genes;
	$L_PROM = $L_SUM / $numero_de_genes;
	$I_PROM = $I_SUM / $numero_de_genes;
	$M_PROM = $M_SUM / $numero_de_genes;
	$Cct_PROM = $Cct_SUM / $numero_de_genes;
	$Cgc_PROM = $Cgc_SUM / $numero_de_genes;

			print ("El programa va a calcular el uso de codones en porcentaje para el genoma $alista[$currfile]\n"); 
			
			$sumatotal  = 0;
			$sumatotal  = $UUU + $UUC + $UUA + $UUG +
			$CUU + $CUC + $CUA + $CUG + $AUU + $AUC + $AUA + $AUG + $GUU + $GUC +
			$GUA + $GUG + $UCU + $UCC + $UCA + $UCG + $CCU + $CCC + $CCA + $CCG +
			$ACU + $ACC + $ACA + $ACG + $GCU + $GCC + $GCA + $GCG + $UAU + $UAC +
			$UAA + $UAG + $CAU + $CAC + $CAA + $CAG + $AAU + $AAC + $AAA + $AAG +
			$GAU + $GAC + $GAA + $GAG + $UGU + $UGC + $UGA + $UGG + $CGU + $CGC +
			$CGA + $CGG + $AGU + $AGC + $AGA + $AGG + $GGU + $GGC + $GGA + $GGG;
			
			print ("El valor de \$sumatotal es $sumatotal\n");
			
			# Phe
			# $PheSUM = $UUU + $UUC;
			if ($sumatotal != 0) {
				$PheUUUTot = (($UUU * 1) / $sumatotal);
				$PheUUCTot = (($UUC * 1) / $sumatotal);
			}
		
			# Leu
			# $LeuSUM = $UUA + $UUG + $CUU + $CUC + $CUA + $CUG;
			if ($sumatotal != 0) {
				$LeuUUATot = (($UUA * 1) / $sumatotal);
				$LeuUUGTot = (($UUG * 1) / $sumatotal);
				$LeuCUUTot = (($CUU * 1) / $sumatotal);
				$LeuCUCTot = (($CUC * 1) / $sumatotal);
				$LeuCUATot = (($CUA * 1) / $sumatotal);
				$LeuCUGTot = (($CUG * 1) / $sumatotal);
			}
			
			# Ile
			# $IleSUM = $AUU + $AUC + $AUA;
			if ($sumatotal != 0) {
				$IleAUUTot = (($AUU * 1) / $sumatotal);
				$IleAUCTot = (($AUC * 1) / $sumatotal);
				$IleAUATot = (($AUA * 1) / $sumatotal);
			}
			
			# Met
			# $MetSUM = $AUG;
			if ($sumatotal != 0) {
				$MetAUGTot = (($AUG * 1) / $sumatotal);
			}
			
			# Val
			$ValSUM = $GUU + $GUC + $GUA + $GUG;
			if ($sumatotal != 0) {
				$ValGUUTot = (($GUU * 1) / $sumatotal);
				$ValGUCTot = (($GUC * 1) / $sumatotal);
				$ValGUATot = (($GUA * 1) / $sumatotal);
				$ValGUGTot = (($GUG * 1) / $sumatotal);
			}
			
			# Ser
			# $SerSUM = $UCU + $UCC + $UCA + $UCG + $AGU + $AGC;
			if ($sumatotal != 0) {
				$SerUCUTot = (($UCU * 1) / $sumatotal);
				$SerUCCTot = (($UCC * 1) / $sumatotal);
				$SerUCATot = (($UCA * 1) / $sumatotal);
				$SerUCGTot = (($UCG * 1) / $sumatotal);
				$SerAGUTot = (($AGU * 1) / $sumatotal);
				$SerAGCTot = (($AGC * 1) / $sumatotal);
			}
			
			# Pro
			# $ProSUM = $CCU + $CCC + $CCA + $CCG;
			if ($sumatotal != 0) {
				$ProCCUTot = (($CCU * 1) / $sumatotal);
				$ProCCCTot = (($CCC * 1) / $sumatotal);
				$ProCCATot = (($CCA * 1) / $sumatotal);
				$ProCCGTot = (($CCG * 1) / $sumatotal);
			}
			
			# Thr
			# $ThrSUM = $ACU + $ACC + $ACA + $ACG;
			if ($sumatotal != 0) {
				$ThrACUTot = (($ACU * 1) / $sumatotal);
				$ThrACCTot = (($ACC * 1) / $sumatotal);
				$ThrACATot = (($ACA * 1) / $sumatotal);
				$ThrACGTot = (($ACG * 1) / $sumatotal);
			}
			
			# Ala
			# $AlaSUM = $GCU + $GCC + $GCA + $GCG;
			if ($sumatotal != 0) {
				$AlaGCUTot = (($GCU * 1) / $sumatotal);
				$AlaGCCTot = (($GCC * 1) / $sumatotal);
				$AlaGCATot = (($GCA * 1) / $sumatotal);
				$AlaGCGTot = (($GCG * 1) / $sumatotal);
			}
			
			# Tyr
			# $TyrSUM = $UAU + $UAC;
			if ($sumatotal != 0) {
				$TyrUAUTot = (($UAU * 1) / $sumatotal);
				$TyrUACTot = (($UAC * 1) / $sumatotal);
			}
			
			# Ter
			# $TerSUM = $UAA + $UAG + $UGA;
			if ($sumatotal != 0) {
				$TerUAATot = (($UAA * 1) / $sumatotal);
				$TerUAGTot = (($UAG * 1) / $sumatotal);
				$TerUGATot = (($UGA * 1) / $sumatotal);
			}
			
			# His
			# $HisSUM = $CAU + $CAC;
			if ($sumatotal != 0) {
				$HisCAUTot = (($CAU * 1) / $sumatotal);
				$HisCACTot = (($CAC * 1) / $sumatotal);
			}
			
			# Gln
			# $GlnSUM = $CAA + $CAG;
			if ($sumatotal != 0) {
				$GlnCAATot = (($CAA * 1) / $sumatotal);
				$GlnCAGTot = (($CAG * 1) / $sumatotal);
			}
			
			# Asn
			# $AsnSUM = $AAU + $AAC;
			if ($sumatotal != 0) {
				$AsnAAUTot = (($AAU * 1) / $sumatotal);
				$AsnAACTot = (($AAC * 1) / $sumatotal);
			}
			
			# Lys
			# $LysSUM = $AAA + $AAG;
			if ($sumatotal != 0) {
				$LysAAATot = (($AAA * 1) / $sumatotal);
				$LysAAGTot = (($AAG * 1) / $sumatotal);
			}
			
			# Asp
			# $AspSUM = $GAU + $GAC;
			if ($sumatotal != 0) {
				$AspGAUTot = (($GAU * 1) / $sumatotal);
				$AspGACTot = (($GAC * 1) / $sumatotal);
			}
			
			# Glu
			# $GluSUM = $GAA + $GAG;
			if ($sumatotal != 0) {
				$GluGAATot = (($GAA * 1) / $sumatotal);
				$GluGAGTot = (($GAG * 1) / $sumatotal);
			}
			
			# Cys
			# $CysSUM = $UGU + $UGC;
			if ($sumatotal != 0) {
				$CysUGUTot = (($UGU * 1) / $sumatotal);
				$CysUGCTot = (($UGC * 1) / $sumatotal);
			}
			
			# Trp
			# $TrpSUM = $UGG;
			if ($sumatotal != 0) {
				$TrpUGGTot = (($UGG * 1) / $sumatotal);
			}
			
			# Arg
			# $ArgSUM = $CGU + $CGC + $CGA + $CGG + $AGA + $AGG;
			if ($sumatotal != 0) {
				$ArgCGUTot = (($CGU * 1) / $sumatotal);
				$ArgCGCTot = (($CGC * 1) / $sumatotal);
				$ArgCGATot = (($CGA * 1) / $sumatotal);
				$ArgCGGTot = (($CGG * 1) / $sumatotal);
				$ArgAGATot = (($AGA * 1) / $sumatotal);
				$ArgAGGTot = (($AGG * 1) / $sumatotal);
			}
			
			# Gly
			# $GlySUM = $GGU + $GGC + $GGA + $GGG;
			if ($sumatotal != 0) {
				$GlyGGUTot = (($GGU * 1) / $sumatotal);
				$GlyGGCTot = (($GGC * 1) / $sumatotal);
				$GlyGGATot = (($GGA * 1) / $sumatotal);
				$GlyGGGTot = (($GGG * 1) / $sumatotal);
			}
			




	# RSCU = Xi / Xp donde Xp = SUM Xi/m donde m = numero de distintos codones para el aminoacido
	# calculo de los Xp
	print ("El programa va a calcular los RSCU (Relative Synonymous Codon Usage) para el genoma\n"); 
			
			# Phe
			$PheSUM = $UUU + $UUC;
			$PheXp = $PheSUM / 2;
			if ($PheXp != 0) {
				$PheUUU = $UUU / $PheXp;
				$PheUUC = $UUC / $PheXp;
			}
		
			# Leu
			$LeuSUM = $UUA + $UUG + $CUU + $CUC + $CUA + $CUG;
			$LeuXp = $LeuSUM / 6;
			if ($LeuXp != 0) {
				$LeuUUA = $UUA / $LeuXp;
				$LeuUUG = $UUG / $LeuXp;
				$LeuCUU = $CUU / $LeuXp;
				$LeuCUC = $CUC / $LeuXp;
				$LeuCUA = $CUA / $LeuXp;
				$LeuCUG = $CUG / $LeuXp;
			}
		
			# Ile
			$IleSUM = $AUU + $AUC + $AUA;
			$IleXp = $IleSUM / 3;
			if ($IleXp != 0) {
				$IleAUU = $AUU / $IleXp;
				$IleAUC = $AUC / $IleXp;
				$IleAUA = $AUA / $IleXp;
			}
		
			# Met
			$MetSUM = $AUG;
			$MetXp = $MetSUM / 1;
			if ($MetXp != 0) {
				$MetAUG = $AUG / $MetXp;
			}
		
			# Val
			$ValSUM = $GUU + $GUC + $GUA + $GUG;
			$ValXp = $ValSUM / 4;
			if ($ValXp != 0) {
				$ValGUU = $GUU / $ValXp;
				$ValGUC = $GUC / $ValXp;
				$ValGUA = $GUA / $ValXp;
				$ValGUG = $GUG / $ValXp;
			}
		
			# Ser
			$SerSUM = $UCU + $UCC + $UCA + $UCG + $AGU + $AGC;
			$SerXp = $SerSUM / 6;
			if ($SerXp != 0) {
				$SerUCU = $UCU / $SerXp;
				$SerUCC = $UCC / $SerXp;
				$SerUCA = $UCA / $SerXp;
				$SerUCG = $UCG / $SerXp;
				$SerAGU = $AGU / $SerXp;
				$SerAGC = $AGC / $SerXp;
			}
		
			# Pro
			$ProSUM = $CCU + $CCC + $CCA + $CCG;
			$ProXp = $ProSUM / 4;
			if ($ProXp != 0) {
				$ProCCU = $CCU / $ProXp;
				$ProCCC = $CCC / $ProXp;
				$ProCCA = $CCA / $ProXp;
				$ProCCG = $CCG / $ProXp;
			}
		
			# Thr
			$ThrSUM = $ACU + $ACC + $ACA + $ACG;
			$ThrXp = $ThrSUM / 4;
			if ($ThrXp != 0) {
				$ThrACU = $ACU / $ThrXp;
				$ThrACC = $ACC / $ThrXp;
				$ThrACA = $ACA / $ThrXp;
				$ThrACG = $ACG / $ThrXp;
			}
		
			# Ala
			$AlaSUM = $GCU + $GCC + $GCA + $GCG;
			$AlaXp = $AlaSUM / 4;
			if ($AlaXp != 0) {
				$AlaGCU = $GCU / $AlaXp;
				$AlaGCC = $GCC / $AlaXp;
				$AlaGCA = $GCA / $AlaXp;
				$AlaGCG = $GCG / $AlaXp;
			}

			# Tyr
			$TyrSUM = $UAU + $UAC;
			$TyrXp = $TyrSUM / 2;
			if ($TyrXp != 0) {
				$TyrUAU = $UAU / $TyrXp;
				$TyrUAC = $UAC / $TyrXp;
			}
		
			# Ter
			$TerSUM = $UAA + $UAG + $UGA;
			$TerXp = $TerSUM / 3;
			if ($TerXp != 0) {
				$TerUAA = $UAA / $TerXp;
				$TerUAG = $UAG / $TerXp;
				$TerUGA = $UGA / $TerXp;
			}
		
			# His
			$HisSUM = $CAU + $CAC;
			$HisXp = $HisSUM / 2;
			if ($HisXp != 0) {
				$HisCAU = $CAU / $HisXp;
				$HisCAC = $CAC / $HisXp;
			}
		
			# Gln
			$GlnSUM = $CAA + $CAG;
			$GlnXp = $GlnSUM / 2;
			if ($GlnXp != 0) {
				$GlnCAA = $CAA / $GlnXp;
				$GlnCAG = $CAG / $GlnXp;
			}
		
			# Asn
			$AsnSUM = $AAU + $AAC;
			$AsnXp = $AsnSUM / 2;
			if ($AsnXp != 0) {
				$AsnAAU = $AAU / $AsnXp;
				$AsnAAC = $AAC / $AsnXp;
			}
		
			# Lys
			$LysSUM = $AAA + $AAG;
			$LysXp = $LysSUM / 2;
			if ($LysXp != 0) {
				$LysAAA = $AAA / $LysXp;
				$LysAAG = $AAG / $LysXp;
			}
		
			# Asp
			$AspSUM = $GAU + $GAC;
			$AspXp = $AspSUM / 2;
			if ($AspXp != 0) {
				$AspGAU = $GAU / $AspXp;
				$AspGAC = $GAC / $AspXp;
			}
		
			# Glu
			$GluSUM = $GAA + $GAG;
			$GluXp = $GluSUM / 2;
			if ($GluXp != 0) {
				$GluGAA = $GAA / $GluXp;
				$GluGAG = $GAG / $GluXp;
			}
		
			# Cys
			$CysSUM = $UGU + $UGC;
			$CysXp = $CysSUM / 2;
			if ($CysXp != 0) {
				$CysUGU = $UGU / $CysXp;
				$CysUGC = $UGC / $CysXp;
			}
		
			# Trp
			$TrpSUM = $UGG;
			$TrpXp = $TrpSUM / 1;
			if ($TrpXp != 0) {
				$TrpUGG = $UGG / $TrpXp;
			}
		
			# Arg
			$ArgSUM = $CGU + $CGC + $CGA + $CGG + $AGA + $AGG;
			$ArgXp = $ArgSUM / 6;
			if ($ArgXp != 0) {
				$ArgCGU = $CGU / $ArgXp;
				$ArgCGC = $CGC / $ArgXp;
				$ArgCGA = $CGA / $ArgXp;
				$ArgCGG = $CGG / $ArgXp;
				$ArgAGA = $AGA / $ArgXp;
				$ArgAGG = $AGG / $ArgXp;
			}
		
			# Gly
			$GlySUM = $GGU + $GGC + $GGA + $GGG;
			$GlyXp = $GlySUM / 4;
			if ($GlyXp != 0) {
				$GlyGGU = $GGU / $GlyXp;
				$GlyGGC = $GGC / $GlyXp;
				$GlyGGA = $GGA / $GlyXp;
				$GlyGGG = $GGG / $GlyXp;
			}






	# AHORA SE IMPRIMEN TODOS LOS RESULTADOS EN EL ARCHIVO MATRIX

        open (RESULTS, ">>$archivolista.xls")
        	|| die ("No puedo abrir el archivo $archivolista.xls");
        print RESULTS ("$alista[$currfile]\t$YRd_PROM\t$WSd_PROM\t$MKd_PROM\t$frecGC_PROM\t$frecCpG_PROM\t$H_PROM\t$V_PROM\t$L_PROM\t$I_PROM\t$M_PROM\t0\t");

	print RESULTS ("$PheUUUTot\t$PheUUCTot\t");
	print RESULTS ("$LeuUUATot\t$LeuUUGTot\t$LeuCUUTot\t$LeuCUCTot\t$LeuCUATot\t$LeuCUGTot\t");
	print RESULTS ("$IleAUUTot\t$IleAUCTot\t$IleAUATot\t");
	print RESULTS ("$MetAUGTot\t");
	print RESULTS ("$ValGUUTot\t$ValGUCTot\t$ValGUATot\t$ValGUGTot\t");
	print RESULTS ("$SerUCUTot\t$SerUCCTot\t$SerUCATot\t$SerUCGTot\t$SerAGUTot\t$SerAGCTot\t");
	print RESULTS ("$ProCCUTot\t$ProCCCTot\t$ProCCATot\t$ProCCGTot\t");
	print RESULTS ("$ThrACUTot\t$ThrACCTot\t$ThrACATot\t$ThrACGTot\t");
	print RESULTS ("$AlaGCUTot\t$AlaGCCTot\t$AlaGCATot\t$AlaGCGTot\t");
	print RESULTS ("$TyrUAUTot\t$TyrUACTot\t");
	print RESULTS ("$TerUAATot\t$TerUAGTot\t$TerUGATot\t");
	print RESULTS ("$HisCAUTot\t$HisCACTot\t");
	print RESULTS ("$GlnCAATot\t$GlnCAGTot\t");
	print RESULTS ("$AsnAAUTot\t$AsnAACTot\t");
	print RESULTS ("$LysAAATot\t$LysAAGTot\t");
	print RESULTS ("$AspGAUTot\t$AspGACTot\t");
	print RESULTS ("$GluGAATot\t$GluGAGTot\t");
	print RESULTS ("$CysUGUTot\t$CysUGCTot\t");
	print RESULTS ("$TrpUGGTot\t");
	print RESULTS ("$ArgCGUTot\t$ArgCGCTot\t$ArgCGATot\t$ArgCGGTot\t$ArgAGATot\t$ArgAGGTot\t");
	print RESULTS ("$GlyGGUTot\t$GlyGGCTot\t$GlyGGATot\t$GlyGGGTot\t0\t");


	print RESULTS ("$PheUUU\t$PheUUC\t");
	print RESULTS ("$LeuUUA\t$LeuUUG\t$LeuCUU\t$LeuCUC\t$LeuCUA\t$LeuCUG\t");
	print RESULTS ("$IleAUU\t$IleAUC\t$IleAUA\t");
	print RESULTS ("$MetAUG\t");
	print RESULTS ("$ValGUU\t$ValGUC\t$ValGUA\t$ValGUG\t");
	print RESULTS ("$SerUCU\t$SerUCC\t$SerUCA\t$SerUCG\t$SerAGU\t$SerAGC\t");
	print RESULTS ("$ProCCU\t$ProCCC\t$ProCCA\t$ProCCG\t");
	print RESULTS ("$ThrACU\t$ThrACC\t$ThrACA\t$ThrACG\t");
	print RESULTS ("$AlaGCU\t$AlaGCC\t$AlaGCA\t$AlaGCG\t");
	print RESULTS ("$TyrUAU\t$TyrUAC\t");
	print RESULTS ("$TerUAA\t$TerUAG\t$TerUGA\t");
	print RESULTS ("$HisCAU\t$HisCAC\t");
	print RESULTS ("$GlnCAA\t$GlnCAG\t");
	print RESULTS ("$AsnAAU\t$AsnAAC\t");
	print RESULTS ("$LysAAA\t$LysAAG\t");
	print RESULTS ("$AspGAU\t$AspGAC\t");
	print RESULTS ("$GluGAA\t$GluGAG\t");
	print RESULTS ("$CysUGU\t$CysUGC\t");
	print RESULTS ("$TrpUGG\t");
	print RESULTS ("$ArgCGU\t$ArgCGC\t$ArgCGA\t$ArgCGG\t$ArgAGA\t$ArgAGG\t");
	print RESULTS ("$GlyGGU\t$GlyGGC\t$GlyGGA\t$GlyGGG\n");


	close (RESULTS);  
		

	# INICIALICACION DE VARIABLES SUMATORIAS Y PROMEDIOS

	$YRd_SUM = 0;
	$WSd_SUM = 0;
	$MKd_SUM = 0;
	$frecGC_SUM = 0;
	$frecCpG_SUM = 0;
	$Ci3_SUM = 0;
	$Ci2_SUM = 0;
	$H_SUM = 0;
	$V_SUM = 0;
	$L_SUM = 0;
	$I_SUM = 0;
	$M_SUM = 0;
	$Cct_SUM = 0;
	$Cgc_SUM = 0;
	
	$YRd_PROM = 0;
	$WSd_PROM = 0;
	$MKd_PROM = 0;
	$frecGC_PROM = 0;
	$frecCpG_PROM = 0;
	$Ci3_PROM = 0;
	$Ci2_PROM = 0;
	$H_PROM = 0;
	$V_PROM = 0;
	$L_PROM = 0;
	$I_PROM = 0;
	$M_PROM = 0;
	$Cct_PROM = 0;
	$Cgc_PROM = 0;

	$numero_de_genes = 0;

	$UUU = $UUC = "0";
	$UUA = $UUG = $CUU = $CUC = $CUA = $CUG = "0";
	$AUU = $AUC = $AUA = "0";
	$AUG = "0";
	$GUU = $GUC = $GUA = $GUG = "0";
	$UCU = $UCC = $UCA = $UCG = $AGU = $AGC = "0";
	$CCU = $CCC = $CCA = $CCG = "0";
	$ACU = $ACC = $ACA = $ACG = "0";
	$GCU = $GCC = $GCA = $GCG = "0";
	$UAU = $UAC = "0";
	$UAA = $UAG = $UGA = "0";
	$CAU = $CAC = "0";
	$CAA = $CAG = "0";
	$AAU = $AAC = "0";
	$AAA = $AAG = "0";
	$GAU = $GAC = "0";
	$GAA = $GAG = "0";
	$UGU = $UGC = "0";
	$UGG = "0";
	$CGU = $CGC = $CGA = $CGG = $AGA = $AGG = "0";
	$GGU = $GGC = $GGA = $GGG = "0";

	$PheSUM = $PheXp = $PheUUU = $PheUUC = "0";
	$LeuSUM = $LeuXp = $LeuUUA = $LeuUUG = $LeuCUU = $LeuCUC = $LeuCUA = $LeuCUG = "0";	
	$IleSUM = $IleXp = $IleAUU = $IleAUC = $IleAUA = "0";
	$MetSUM = $MetXp = $MetAUG = "0";
	$ValSUM = $ValXp = $ValGUU = $ValGUC = $ValGUA = $ValGUG = "0";
	$SerSUM = $SerXp = $SerUCU = $SerUCC = $SerUCA = $SerUCG = $SerAGU = $SerAGC = "0";
	$ProSUM = $ProXp = $ProCCU = $ProCCC = $ProCCA = $ProCCG = "0";
	$ThrSUM = $ThrXp = $ThrACU = $ThrACC = $ThrACA = $ThrACG = "0";
	$AlaSUM = $AlaXp = $AlaGCU = $AlaGCC = $AlaGCA = $AlaGCG = "0";
	$TyrSUM = $TyrXp = $TyrUAU = $TyrUAC = "0";
	$TerSUM = $TerXp = $TerUAA = $TerUAG = $TerUGA = "0";	
	$HisSUM = $HisXp = $HisCAU = $HisCAC = "0";
	$GlnSUM = $GlnXp = $GlnCAA = $GlnCAG = "0";
	$AsnSUM = $AsnXp = $AsnAAU = $AsnAAC = "0";
	$LysSUM = $LysXp = $LysAAA = $LysAAG = "0";
	$AspSUM = $AspXp = $AspGAU = $AspGAC = "0";
	$GluSUM = $GluXp = $GluGAA = $GluGAG = "0";
	$CysSUM = $CysXp = $CysUGU = $CysUGC = "0";
	$TrpSUM = $TrpXp = $TrpUGG = "0";
	$ArgSUM = $ArgXp = $ArgCGU = $ArgCGC = $ArgCGA = $ArgCGG = $ArgAGA = $ArgAGG = "0";
	$GlySUM = $GlyXp = $GlyGGU = $GlyGGC = $GlyGGA = $GlyGGG = "0";


	$PheUUUTot = $PheUUCTot = "0";
	$LeuUUATot = $LeuUUGTot = $LeuCUUTot = $LeuCUCTot = $LeuCUATot = $LeuCUGTot = "0";	
	$IleAUUTot = $IleAUCTot = $IleAUATot = "0";
	$MetAUGTot = "0";
	$ValGUUTot = $ValGUCTot = $ValGUATot = $ValGUGTot = "0";
	$SerUCUTot = $SerUCCTot = $SerUCATot = $SerUCGTot = $SerAGUTot = $SerAGCTot = "0";
	$ProCCUTot = $ProCCCTot = $ProCCATot = $ProCCGTot = "0";
	$ThrACUTot = $ThrACCTot = $ThrACATot = $ThrACGTot = "0";
	$AlaGCUTot = $AlaGCCTot = $AlaGCATot = $AlaGCGTot = "0";
	$TyrUAUTot = $TyrUACTot = "0";
	$TerUAATot = $TerUAGTot = $TerUGATot = "0";	
	$HisCAUTot = $HisCACTot = "0";
	$GlnCAATot = $GlnCAGTot = "0";
	$AsnAAUTot = $AsnAACTot = "0";
	$LysAAATot = $LysAAGTot = "0";
	$AspGAUTot = $AspGACTot = "0";
	$GluGAATot = $GluGAGTot = "0";
	$CysUGUTot = $CysUGCTot = "0";
	$TrpUGGTot = "0";
	$ArgCGUTot = $ArgCGCTot = $ArgCGATot = $ArgCGGTot = $ArgAGATot = $ArgAGGTot = "0";
	$GlyGGUTot = $GlyGGCTot = $GlyGGATot = $GlyGGGTot = "0";


	##open (LISTAYRd, "lista_YRd")
	##	||  die ("No puedo abrir el archivo lista_YRd");
	##	@lista_YRd = <LISTAYRd>;
	##close (LISTAYRd);
	##$cadena_YRd = join (" ", @lista_YRd);
	##$cadena_YRd =~ s/\n//g;
	##@lista_YRd = split (/ /, $cadena_YRd);
	##$sizeYRd = @lista_YRd;
	
	#$cont = 0;
	#while ($cont < @lista_YRd) {
	#	$sumaYRd =+ $lista_YRd[$cont];	
	#	$cont++;
	#} # se cierra el while
	#$promedioYRd = $sumaYRd / $sizeYRd;
	#print ("El valor promedio de el ¡ndice YRd es: $promedioYRd\n");
	##$cont = 0;
	##$interval = -1;
	##while ($interval < 1) {
	##	$valor = 0;
	##	$intv1 = $interval + $espacio; 
	##	$cont = 0;
	##	while ($cont < @lista_YRd) {
	##		if ($lista_YRd[$cont] >= $interval 
	##		&& $lista_YRd[$cont] < $intv1) {
	##			$valor++;
	##		} # se cierra el if 
	##		$cont++;
	##	} # se cierra el while	
	##	open (RESULT, ">>$archivo1.YRd") 
		##       	 || die ("No puedo abrir el archivo $archivo1.YRd"); 
	##		print RESULT ("$interval\t $intv1\t $valor\n");
	##	close (RESULT);
	##	$interval = $interval + $espacio;
	##} # se cierra el while 
	##$cont = 0;
	#while ($cont < @lista_YRd) {
	#	$sumvarYRd =+ ($lista_YRd[$cont] - $promedioYRd)**2;
	#	$cont++;
	#} # se cierra el while
	#$varYRd = $sumvarYRd / $sizeYRd; # Varianza
	#$sdYRd = $varYRd**0.5; # una desviaci¢n estandard
	#$DossdYRd = $sdYRd * 2; # dos desviaciones estandard
	
	
	##open (LISTAWSd, "lista_WSd")
	##	||  die ("No puedo abrir el archivo lista_WSd");
	##	@lista_WSd = <LISTAWSd>;
	##close (LISTAWSd);
	##$cadena_WSd = join (" ", @lista_WSd);
	##$cadena_WSd =~ s/\n//g;
	##@lista_WSd = split (/ /, $cadena_WSd);
	##$sizeWSd = @lista_WSd;
	#$cont = 0;
	#while ($cont < @lista_WSd) {
	#	$sumaWSd =+ $lista_WSd[$cont];
	#	$cont++;
	#} # se cierra el while
	#$promedioWSd = $sumaWSd / $sizeWSd;
	#print ("El valor promedio de el ¡ndice WSd es: $promedioWSd\n");
	##$cont = 0;
	##$interval = -1;
	##while ($interval < 1) {
	##	$valor = 0; 
	##	$cont = 0;
	##	$intv1 = $interval + $espacio;
	##	while ($cont < @lista_WSd) {
	##		if ($lista_WSd[$cont] >= $interval 
	##		&& $lista_WSd[$cont] < $intv1) {
	##			$valor++;
	##		} # se cierra el if
	##		$cont++;
	##	} # se cierra el while	
	##	open (RESULT, ">>$archivo1.WSd") 
	##      	 || die ("No puedo abrir el archivo $archivo1.WSd"); 
	##		print RESULT ("$interval\t $intv1\t $valor\n");
	##	close (RESULT);
	##	$interval = $interval + $espacio;
		##} # se cierra el while
	##$cont = 0;
	##while ($cont < @lista_WSd) {
	##	$sumvarWSd =+ ($lista_WSd[$cont] - $promedioWSd)**2;
	##	$cont++;
	##} # se cierra el while
	#$varWSd = $sumvarWSd / $sizeWSd; # Varianza
	#$sdWSd = $varWSd**0.5; # una desviaci¢n estandard
	#$DossdWSd = $sdWSd * 2; # dos desviaciones estandard
	
	
	##open (LISTAMKd, "lista_MKd")
	##	||  die ("No puedo abrir el archivo lista_MKd");
	##	@lista_MKd = <LISTAMKd>;
	##close (LISTAMKd);
	##$cadena_MKd = join (" ", @lista_MKd);
	##$cadena_MKd =~ s/\n//g;
	##@lista_MKd = split (/ /, $cadena_MKd);
	##$sizeMKd = @lista_MKd;
	#$cont = 0;
	#while ($cont < @lista_MKd) {
	#	$sumaMKd =+ $lista_MKd[$cont];
	#	$cont++;
	#} # se cierra el while
	#$promedioMKd = $sumaMKd / $sizeMKd;
	#print ("El valor promedio de el ¡ndice MKd es: $promedioMKd\n");
	##$cont = 0;
	##$interval = -1;
	##while ($interval < 1) {
	##	$valor = 0;
	##	$cont = 0; 
	##      $intv1 = $interval + $espacio;
	##	while ($cont < @lista_MKd) {
	##		if ($lista_MKd[$cont] >= $interval 
	##		&& $lista_MKd[$cont] < $intv1) {
	##			$valor++;	
	##		} # se cierra el if
	##		$cont++;
	##	} # se cierra el while	
	##	open (RESULT, ">>$archivo1.MKd") 
	##       	 || die ("No puedo abrir el archivo $archivo1.MKd");
	##		print RESULT ("$interval\t $intv1\t $valor\n");
	##	close (RESULT);
	##	$interval = $interval + $espacio;
	##} # se cierra el while
	##$cont = 0;
	##while ($cont < @lista_MKd) {
	##	$sumvarMKd =+ ($lista_MKd[$cont] - $promedioMKd)**2;
	##	$cont++;
	##} # se cierra el while
	#$varMKd = $sumvarMKd / $sizeMKd; # Varianza
	#$sdMKd = $varMKd**0.5; # una desviaci¢n estandard	
	#$DossdMKd = $sdMKd * 2; # dos desviaciones estandard
	
	
	#open (RESULTADOS, ">>R3_$archivo1");
	#	print RESULTADOS ("Dos desivaciones estandard YRd: $DossdYRd\n");
	#        print RESULTADOS ("Dos desivaciones estandard WSd: $DossdWSd\n");
	#        print RESULTADOS ("Dos desivaciones estandard MKd: $DossdMKd\n");
	#        print RESULTADOS ("Promedio de YRd: $promedioYRd\n");
	#        print RESULTADOS ("Promedio de WSd: $promedioWSd\n");
	#        print RESULTADOS ("Promedio de MKd: $promedioMKd\n");       	
	#close (RESULTADOS);
	  
	
	#---------------------------------------------------------------------------------------------------------
	#---------------------------------------------------------------------------------------------------------
	
} # se cierra el foreach principal, con este foreach se contabilizan todos los genomas

@arch_arr = 0;

#} # Quitar este if para que la primera mitad del programa funcione

# La parte anterior del programa genera un archivo que termina con extension *.xls, y lo puede abrir automaticamente
# Esta parte del programa necesita un archivo en donde estén en la primer columna el nombre del genoma y en
# las subsecuentes columnas los valores de los ínices, separado toto por tabuladores
# EL ARCHIVO NO DEBERA CONTENER LA PRIMERA LINEA DE NOMBRES
# Y tampoco debera contener una linea vacia al final

if ( 0 > 1 ) {	# quitar este if para que el resto del programa funcione

print ("Dame el nombre del archivo donde estan las coordenadas\n");
$archivolista = <STDIN>;
chop ($archivolista);

open (ALISTA, "$archivolista.xls") 
	|| die ("No puedo abrir el archivo $archivolista.xls\n");
	@arch_arr = <ALISTA>;
	# el arreglo @arch_arr tiene una linea de texto por casilla 
	# con los valores de a,b,c,d,e,f,g,h para cada punto
close (ALISTA);

#---------------------------------------------------------------------------------------------------------
	
$numero_de_coordenadas = @arch_arr;

# con este for se meten todos los valores de la tabla a un hash

for ($contador = 0; $contador <= $numero_de_coordenadas -1; $contador = $contador +1) {	

	@arreglo_linea = "";
	$linea_actual = $arch_arr[$contador];
	$linea_actual =~ s/\n//g;
	@arreglo_linea = split (/\t/, $linea_actual);
	$genoma = $arreglo_linea[0];					# aqui va el nombre del genoma u lo que sea
	##@coordenadas[0,1,2,3,4,5] = @arreglo_linea[1,2,3,4,5,6];	# aqui van los valores de los i
	##$genoma{$dA} = $coordenadas[0];  				# hash valores (de donde sale $dA?)
	##$genoma{$dB} = $coordenadas[1];  
	##$genoma{$dC} = $coordenadas[2];  
	##$genoma{$dD} = $coordenadas[3];  
	##$genoma{$dE} = $coordenadas[4];  
	##$genoma{$dF} = $coordenadas[5];  

	$lista_de_genomas[$contador] = $genoma;
	
	##$super_arreglo{$genoma.dA} = $coordenadas[0];   
	##$super_arreglo{$genoma.dB} = $coordenadas[1];   
	##$super_arreglo{$genoma.dC} = $coordenadas[2];   
	##$super_arreglo{$genoma.dD} = $coordenadas[3];   
	##$super_arreglo{$genoma.dE} = $coordenadas[4];   
	##$super_arreglo{$genoma.dF} = $coordenadas[5];   
	##print ("@coordenadas\n");
	##print ("$coordenadas[0]\n");
	##print ("$coordenadas[1]\n");
	##print ("$coordenadas[2]\n");
	##print ("$coordenadas[3]\n");
	##print ("$coordenadas[4]\n");
	##print ("$coordenadas[5]\n");
					
	@coordenadas = ();
	

	print ("@arreglo_linea\n");	
	$final = $#arreglo_linea;
	print ("$final\n");

	for ($kk = 0; $kk < $final; $kk++){
		$coordenadas[$kk] = $arreglo_linea[$kk +1];
	}

	print ("@coordenadas\n");

	$dimensiones = @coordenadas;
	for ($coor = 0; $coor <= $#coordenadas; $coor++){
		print ("$coordenadas[$coor]*");
	}

	print ("\n");
	print ("Es un espacio de $dimensiones dimensiones\n");



	for ($m = 0; $m <= $#coordenadas; $m++){
		print ("$coordenadas[$m]\n");
		$super_arreglo{$genoma.d.$m} = $coordenadas[$m];
	}

} # se cierra el for principal

#---------------------------------------------------------------------------------------------------------

@lista_de_genomas = sort (@lista_de_genomas);

##foreach $paso (@lista_de_genomas) {

##	print ("El genoma $paso tiene las siguientes coordenadas:\n");
##	print ("$super_arreglo{$paso.dA}\n");
##	print ("$super_arreglo{$paso.dB}\n");
##	print ("$super_arreglo{$paso.dC}\n");
##	print ("$super_arreglo{$paso.dD}\n");
##	print ("$super_arreglo{$paso.dE}\n");
##	print ("$super_arreglo{$paso.dF}\n");

##} # se cierra el foreach

##print ("Ahora van los otros\n");

foreach $paso (@lista_de_genomas) {

	print ("El genoma $paso tiene las siguientes coordenadas:\n");
	for ($m = 0; $m <= $#coordenadas; $m++){
		print ("$super_arreglo{$paso.d.$m}\n");
	}
} # se cierra el foreach


$numero_de_puntos = @lista_de_genomas;
##print ("Hay $numero_de_puntos puntos (genomas) en el espacio de tres dimensiones\n");
##print ("para calcular sus distancias\n");
##print ("Los genomas a analizar son @lista_de_genomas\n");
#---------------------------------------------------------------------------------------------------------

#print ("Quieres formato PHYLIP (a) o formato MEGA2 (b)?\n");
$pregunta = 'b';
#chomp ($pregunta);

if ($pregunta eq a) {

	#---------------------------------------------------------------------------------------------------------
	#---------------------------------------------------------------------------------------------------------

	open (MYFILE, ">$archivolista.dist_outfile_8D") || die ("No puedo abrir dist_outfile_8D\n");
		print MYFILE ("   $archivolista\n");
	close (MYFILE);

	#---------------------------------------------------------------------------------------------------------

	$space = $numero_de_puntos;
	
	for ($paso = 0; $paso < $numero_de_puntos -1; $paso = $paso +1) {
		open (MYFILE, ">>$archivolista.dist_outfile_8D") || die ("No puedo abrir dist_outfile_8D\n");

	
		close (MYFILE);
	} # se cierra el for
	
	#---------------------------------------------------------------------------------------------------------
	
	for ($paso = 0; $paso <= $numero_de_puntos -1; $paso = $paso +1) {
		
		$nombre = $lista_de_genomas[$paso];
		$cont = 1;
		@a = "";
		
		for ($loop = $paso; $loop <= $numero_de_puntos -1; $loop = $loop +1) {
			
			$abrete = $lista_de_genomas[$paso];
			$abretemas = $lista_de_genomas[$loop];
		
			$valXa = ("$super_arreglo{$abrete.X}");	
			$valXb = ("$super_arreglo{$abretemas.X}");
			$restaX = $valXb - $valXa;
			$restaX2 = $restaX**2;
		
			$valYa = ("$super_arreglo{$abrete.Y}");	
			$valYb = ("$super_arreglo{$abretemas.Y}");
			$restaY = $valYb - $valYa;
			$restaY2 = $restaY**2;
		
			$valZa = ("$super_arreglo{$abrete.Z}");	
			$valZb = ("$super_arreglo{$abretemas.Z}");
			$restaZ = $valZb - $valZa;
			$restaZ2 = $restaZ**2;
		
			print ("Las coordenadas para $abrete y $abretemas son:\n");
			print ("X1:$valXa, X2:$valXb,	Y1:$valYa, Y2:$valYb	Z1:$valZa, Z2:$valZb\n");
		
			$dist = ($restaX2 + $restaY2 + $restaZ2)**0.5;
		
			print ("Distancia de $abrete a $abretemas: $dist\n");
			
			$a[$cont] = $dist;
			$cont = $cont +1;
			
		} # se cierra el for
		
		$a[0] = $nombre;
		$cadena = join (":::", @a);
		@b = split (/:::/, $cadena);
		for ($valor = 0; $valor <= $numero_de_puntos; $valor = $valor +1) {

			if ($valor == 0) {
				print ("$b[$valor]     ");
			} else {
				print ("$b[$valor]  ");
			}
		} # se cierra el for
		print ("\n");
		@b = "";
			
	} # se cierra el for
	
	#---------------------------------------------------------------------------------------------------------
	#---------------------------------------------------------------------------------------------------------
	
} elsif ($pregunta eq b) {  # se cierra el if de PHYLIP	

	#---------------------------------------------------------------------------------------------------------

	open (MYFILE, ">$archivolista.dist_outfile_8D") || die ("No puedo abrir dist_outfile_8D\n");
		print MYFILE ("#mega\n");
		print MYFILE ("!Title: $archivolista;\n");
		print MYFILE ("!Format DataType=Distance DataFormat=LowerLeft NTaxa=$numero_de_puntos;\n");
		print MYFILE ("\n");

	close (MYFILE);

	#---------------------------------------------------------------------------------------------------------

	open (MYFILE, ">>$archivolista.dist_outfile_8D") || die ("No puedo abrir $archivolista.dist_outfile_8D\n");
	for ($paso = 0; $paso <= $numero_de_puntos -1; $paso = $paso +1) {	# for 1 se abre
	
		if ($numero_de_puntos < 10) {		# if 1 se abre aqui
			if ($paso +1 < 10) {
				$sp = $paso +1;
				print MYFILE ("[$sp] #$lista_de_genomas[$paso]\n");
			} elsif ($paso == 9) {
				$sp = $paso +1;
				print MYFILE ("[$sp] #$lista_de_genomas[$paso]\n");
			}
		} elsif ($numero_de_puntos >= 10 && $numero_de_puntos < 100) {
			if ($paso +1 < 10) {
				$sp = $paso +1;
				print MYFILE ("[ $sp] #$lista_de_genomas[$paso]\n");
			} elsif ($paso == 9){
				$sp = $paso +1;
				print MYFILE ("[$sp] #$lista_de_genomas[$paso]\n");				
			} elsif ($paso >= 10 && $paso +1 < 100){
				$sp = $paso +1;
				print MYFILE ("[$sp] #$lista_de_genomas[$paso]\n");
			}
		} elsif ($numero_de_puntos >= 100 && $numero_de_puntos < 1000) {
			if ($paso +1 < 10) {
				$sp = $paso +1;
				print MYFILE ("[  $sp] #$lista_de_genomas[$paso]\n");
			} elsif ($paso == 9){
				$sp = $paso +1;
				print MYFILE ("[ $sp] #$lista_de_genomas[$paso]\n");
			} elsif ($paso >= 10 && $paso +1 < 100){
				$sp = $paso +1;
				print MYFILE ("[ $sp] #$lista_de_genomas[$paso]\n");
			} elsif ($paso == 99){
				$sp = $paso +1;
				print MYFILE ("[$sp] #$lista_de_genomas[$paso]\n");
			} elsif ($paso >= 100 && $paso +1 < 1000){
				$sp = $paso +1;
				print MYFILE ("[$sp] #$lista_de_genomas[$paso]\n");
			} 
		} elsif ($numero_de_puntos >= 1000 && $numero_de_puntos < 10000) {
			if ($paso +1 < 10) {
				$sp = $paso +1;
				print MYFILE ("[   $sp] #$lista_de_genomas[$paso]\n");
			} elsif ($paso == 9){
				$sp = $paso +1;
				print MYFILE ("[  $sp] #$lista_de_genomas[$paso]\n");
			} elsif ($paso >= 10 && $paso +1 < 100){
				$sp = $paso +1;
				print MYFILE ("[  $sp] #$lista_de_genomas[$paso]\n");
			} elsif ($paso == 99){
				$sp = $paso +1;
				print MYFILE ("[ $sp] #$lista_de_genomas[$paso]\n");
			} elsif ($paso >= 100 && $paso +1 < 1000){
				$sp = $paso +1;
				print MYFILE ("[ $sp] #$lista_de_genomas[$paso]\n");
			} elsif ($paso == 999){
				$sp = $paso +1;
				print MYFILE ("[$sp] #$lista_de_genomas[$paso]\n");
			} elsif ($paso >= 1000 && $paso +1 < 10000){
				$sp = $paso +1;
				print MYFILE ("[$sp] #$lista_de_genomas[$paso]\n");
			}
		} elsif ($numero_de_puntos >= 10000 && $numero_de_puntos < 100000) {
			if ($paso +1 < 10) {
				$sp = $paso +1;
				print MYFILE ("[    $sp] #$lista_de_genomas[$paso]\n");
			} elsif ($paso == 9){
				$sp = $paso +1;
				print MYFILE ("[   $sp] #$lista_de_genomas[$paso]\n");
			} elsif ($paso >= 10 && $paso +1 < 100){
				$sp = $paso +1;
				print MYFILE ("[   $sp] #$lista_de_genomas[$paso]\n");
			} elsif ($paso == 99){
				$sp = $paso +1;
				print MYFILE ("[  $sp] #$lista_de_genomas[$paso]\n");				
			} elsif ($paso >= 100 && $paso +1 < 1000){
				$sp = $paso +1;
				print MYFILE ("[  $sp] #$lista_de_genomas[$paso]\n");
			} elsif ($paso == 999){
				$sp = $paso +1;
				print MYFILE ("[ $sp] #$lista_de_genomas[$paso]\n");				
			} elsif ($paso >= 1000 && $paso +1 < 10000){
				$sp = $paso +1;
				print MYFILE ("[ $sp] #$lista_de_genomas[$paso]\n");
			} elsif ($paso == 9999){
				$sp = $paso +1;
				print MYFILE ("[$sp] #$lista_de_genomas[$paso]\n");				
			} elsif ($paso >= 10000 && $paso +1 < 100000){
				$sp = $paso +1;
				print MYFILE ("[$sp] #$lista_de_genomas[$paso]\n");
			}

		} # se cierra el if 1

	} # se cierra el for 1

	close (MYFILE);

	#---------------------------------------------------------------------------------------------------------
	
	open (MYFILE, ">>$archivolista.dist_outfile_8D") || die ("No puedo abrir $archivolista.dist_outfile_8D\n");
		print MYFILE ("\n");
		if ($numero_de_puntos < 10){
			print MYFILE ("[    ");	# luego tengo que quitar los puntos
			for ($paso = 0; $paso <= $numero_de_puntos -1; $paso = $paso +1) {	# CAMBIO AQUI
				$sp = $paso +1;
				print MYFILE ("                    $sp  ");	# 19				
			}
		} elsif ($numero_de_puntos >= 10 && $numero_de_puntos < 100){
			print MYFILE ("[     ");	# luego tengo que quitar los puntos
			for ($paso = 0; $paso <= $numero_de_puntos -1; $paso = $paso +1) {
				if ($paso +1 < 10) {
					$sp = $paso +1;
					print MYFILE ("                    $sp  "); # 19
				} elsif ($paso == 9) {
					$sp = $paso +1;
					print MYFILE ("                   $sp  ");  # 18
				} elsif ($paso >= 10 && $paso +1 < 100){
					$sp = $paso +1;
					print MYFILE ("                   $sp  ");  # 18	
				}
			}
		} elsif ($numero_de_puntos >= 100 && $numero_de_puntos < 1000){
			print MYFILE ("[      ");	# luego tengo que quitar los puntos
			for ($paso = 0; $paso <= $numero_de_puntos -1; $paso = $paso +1) {
				if ($paso +1 < 10) {
					$sp = $paso +1;
					print MYFILE ("                    $sp  ");	# 19
				} elsif ($paso == 9) {
					$sp = $paso +1;
					print MYFILE ("                   $sp  "); 	# 18
				} elsif ($paso >= 10 && $paso +1 < 100){
					$sp = $paso +1;
					print MYFILE ("                   $sp  ");	# 18
				} elsif ($paso == 99) {
					$sp = $paso +1;
					print MYFILE ("                  $sp  "); 	# 17	
				} elsif ($paso >= 100 && $paso +1 < 1000){
					$sp = $paso +1;
					print MYFILE ("                  $sp  ");		# 17
				}				
			}
		} elsif ($numero_de_puntos >= 1000 && $numero_de_puntos < 10000){
			print MYFILE ("[       ");	# luego tengo que quitar los puntos
			for ($paso = 0; $paso <= $numero_de_puntos -1; $paso = $paso +1) {
				if ($paso +1 < 10) {
					$sp = $paso +1;
					print MYFILE ("                    $sp  ");	# 19
				} elsif ($paso == 9) {
					$sp = $paso +1;
					print MYFILE ("                   $sp  "); 	# 18
				} elsif ($paso >= 10 && $paso +1 < 100){
					$sp = $paso +1;
					print MYFILE ("                   $sp  ");	# 18
				} elsif ($paso == 99) {
					$sp = $paso +1;
					print MYFILE ("                  $sp  "); 	# 17	
				} elsif ($paso >= 100 && $paso +1 < 1000){
					$sp = $paso +1;
					print MYFILE ("                  $sp  ");		# 17
				} elsif ($paso == 999) {
					$sp = $paso +1;
					print MYFILE ("                 $sp  "); 		# 16	
				} elsif ($paso >= 1000 && $paso +1 < 10000){
					$sp = $paso +1;
					print MYFILE ("                 $sp  ");		# 16
				}							
			}
		} elsif ($numero_de_puntos >= 10000 && $numero_de_puntos < 100000){
			print MYFILE ("[        ");	# luego tengo que quitar los puntos
			for ($paso = 0; $paso <= $numero_de_puntos -1; $paso = $paso +1) {
				if ($paso +1 < 10) {
					$sp = $paso +1;
					print MYFILE ("                    $sp  ");	# 19
				} elsif ($paso == 9) {
					$sp = $paso +1;
					print MYFILE ("                   $sp  "); 	# 18
				} elsif ($paso >= 10 && $paso +1 < 100){
					$sp = $paso +1;
					print MYFILE ("                   $sp  ");	# 18
				} elsif ($paso == 99) {
					$sp = $paso +1;
					print MYFILE ("                  $sp  "); 	# 17	
				} elsif ($paso >= 100 && $paso +1 < 1000){
					$sp = $paso +1;
					print MYFILE ("                  $sp  ");		# 17
				} elsif ($paso == 999) {
					$sp = $paso +1;
					print MYFILE ("                 $sp  "); 		# 16	
				} elsif ($paso >= 1000 && $paso +1 < 10000){	
					$sp = $paso +1;
					print MYFILE ("                 $sp  ");		# 16
				} elsif ($paso == 9999) {
					$sp = $paso +1;
					print MYFILE ("                $sp  "); 		# 15	
				} elsif ($paso >= 10000 && $paso +1 < 100000){
					$sp = $paso +1;
					print MYFILE ("                $sp  ");		# 15
				}	
			} # se cierra el for

		} # se cierra el if
		
		print MYFILE (" ]\n");

	close (MYFILE);

	#---------------------------------------------------------------------------------------------------------
	open (MYFILE, ">>$archivolista.dist_outfile_8D") || die ("No puedo abrir $archivolista.dist_outfile_8D\n");

		if ($numero_de_puntos < 10) {
			print MYFILE ("[1]\n");
		} elsif ($numero_de_puntos >= 10 && $numero_de_puntos < 100) {
			print MYFILE ("[ 1]\n");	
		} elsif ($numero_de_puntos >= 100 && $numero_de_puntos < 1000) {
			print MYFILE ("[  1]\n");
		} elsif ($numero_de_puntos >= 1000 && $numero_de_puntos < 10000) {
			print MYFILE ("[   1]\n");
		} elsif ($numero_de_puntos >= 10000 && $numero_de_puntos < 100000) {
			print MYFILE ("[    1]\n");						
		}
	
	close (MYFILE);
	#---------------------------------------------------------------------------------------------------------
	
	for ($count = 1; $count <= $numero_de_puntos -1; $count = $count +1) {
		
		open (MYFILE, ">>$archivolista.dist_outfile_8D") || die ("No puedo abrir $archivolista.dist_outfile_8D\n");
		
		@a = "";
		
		for ($var = 0; $var < $count; $var = $var +1) {
			
							
				$abrete = $lista_de_genomas[$var];
				$abretemas = $lista_de_genomas[$count];
			
				##$valdA_1 = ("$super_arreglo{$abrete.dA}");	
				##$valdA_2 = ("$super_arreglo{$abretemas.dA}");
				##$restadA = $valdA_1 - $valdA_2;
				##$restadA2 = $restadA**2;

				##$valdB_1 = ("$super_arreglo{$abrete.dB}");	
				##$valdB_2 = ("$super_arreglo{$abretemas.dB}");
				##$restadB = $valdB_1 - $valdB_2;
				##$restadB2 = $restadB**2;

				##$valdC_1 = ("$super_arreglo{$abrete.dC}");	
				##$valdC_2 = ("$super_arreglo{$abretemas.dC}");
				##$restadC = $valdC_1 - $valdC_2;
				##$restadC2 = $restadC**2;

				##$valdD_1 = ("$super_arreglo{$abrete.dD}");	
				##$valdD_2 = ("$super_arreglo{$abretemas.dD}");
				##$restadD = $valdD_1 - $valdD_2;
				##$restadD2 = $restadD**2;

				##$valdE_1 = ("$super_arreglo{$abrete.dE}");	
				##$valdE_2 = ("$super_arreglo{$abretemas.dE}");
				##$restadE = $valdE_1 - $valdE_2;
				##$restadE2 = $restadE**2;

				##$valdF_1 = ("$super_arreglo{$abrete.dF}");	
				##$valdF_2 = ("$super_arreglo{$abretemas.dF}");
				##$restadF = $valdF_1 - $valdF_2;
				##$restadF2 = $restadF**2;

				for ($m = 0; $m <= $#coordenadas; $m++){
					$vald_1 = ("$super_arreglo{$abrete.d.$m}");	
					$vald_2 = ("$super_arreglo{$abretemas.d.$m}");
					$restad = $vald_1 - $vald_2;
					$restad2 = $restad**2;
					$sumon = $sumon + $restad2;
				}

				
				##$dist = ($restadA2 + $restadB2 + $restadC2 + $restadD2 + $restadE2 + $restadF2)**0.5;
				
				$sumon = ($sumon**0.5);
				
				print ("Distancia entre el genoma $abrete y $abretemas\n");
				print ("$sumon\n");
				##print ("$dist\n");
								
				$dist = $sumon;		
				$a[$var] = $dist;
				
				$sumon = ();
				
				print ("El valor de \$count fue $count y el valor de \$var fue $var\n");
				
		} # se cierra el for de $var

		if ($numero_de_puntos < 10) {		# if 1 se abre aqui
			$sp = $count +1;
			print MYFILE ("[$sp]");
		} elsif ($numero_de_puntos >= 10 && $numero_de_puntos < 100 ) {
			if ($count +1 < 10) {
				$sp = $count +1;
				print MYFILE ("[ $sp]");
			} elsif ($count == 9) {
				$sp = $count +1;
				print MYFILE ("[$sp]");
			} elsif ($count >= 10) {
				$sp = $count +1;
				print MYFILE ("[$sp]");
			}
		} elsif ($numero_de_puntos >= 100 && $numero_de_puntos < 1000) {
			if ($count +1 < 10) {				
				$sp = $count +1;
				print MYFILE ("[  $sp]");
			} elsif ($count == 9) {
				$sp = $count +1;
				print MYFILE ("[ $sp]");
			} elsif ($count >= 10 && $count +1 < 100) {
				$sp = $count +1;
				print MYFILE ("[ $sp]");
			} elsif ($count == 99) {
				$sp = $count +1;
				print MYFILE ("[$sp]");
			} elsif ($count >= 100 && $count +1 < 1000) {
				$sp = $count +1;
				print MYFILE ("[$sp]");
			}
		} elsif ($numero_de_puntos >= 1000 && $count < 10000) {
			if ($count +1 < 10) {				
				$sp = $count +1;
				print MYFILE ("[   $sp]");
			} elsif ($count == 9) {
				$sp = $count +1;
				print MYFILE ("[  $sp]");
			} elsif ($count >= 10 && $count +1 < 100) {
				$sp = $count +1;
				print MYFILE ("[  $sp]");
			} elsif ($count == 99) {
				$sp = $count +1;
				print MYFILE ("[ $sp]");
			} elsif ($count >= 100 && $count +1 < 1000) {
				$sp = $count +1;
				print MYFILE ("[ $sp]");
			} elsif ($count == 999) {
				$sp = $count +1;
				print MYFILE ("[$sp]");
			} elsif ($count >= 1000 && $count +1 < 10000) {
				$sp = $count +1;
				print MYFILE ("[$sp]");
			}
		} elsif ($numero_de_puntos >= 10000 && $count < 100000) {
			if ($count +1 < 10) {				
				$sp = $count +1;
				print MYFILE ("[    $sp]");
			} elsif ($count == 9) {
				$sp = $count +1;
				print MYFILE ("[   $sp]");
			} elsif ($count >= 10 && $count +1 < 100) {
				$sp = $count +1;
				print MYFILE ("[   $sp]");
			} elsif ($count == 99) {
				$sp = $count +1;
				print MYFILE ("[  $sp]");
			} elsif ($count >= 100 && $count +1 < 1000) {
				$sp = $count +1;
				print MYFILE ("[  $sp]");
			} elsif ($count == 999) {
				$sp = $count +1;
				print MYFILE ("[ $sp]");
			} elsif ($count >= 1000 && $count +1 < 10000) {
				$sp = $count +1;
				print MYFILE ("[ $sp]");
			} elsif ($count == 9999) {
				$sp = $count +1;
				print MYFILE ("[$sp]");
			} elsif ($count >= 10000 && $count < 100000) {
				$sp = $count +1;
				print MYFILE ("[$sp]");
			}
		} # se cierra el if 1
		
		
		$b = @a;
		$decimales20 = ".00000000000000000000";
		$decimales19 = "0000000000000000000";
		$decimales18 = "000000000000000000";
		$decimales17 = "00000000000000000";
		$decimales16 = "0000000000000000";
		$decimales15 = "000000000000000";
		$decimales14 = "00000000000000";
		$decimales13 = "0000000000000";
		$decimales12 = "000000000000";
		$decimales11 = "00000000000";
		$decimales10 = "0000000000";
		$decimales9  = "000000000";
		$decimales8  = "00000000";
		$decimales7  = "0000000";
		$decimales6  = "000000";
		$decimales5  = "00000";
		$decimales4  = "0000";
		$decimales3  = "000";
		$decimales2  = "00";
		$decimales1  = "0";
		
		for ($i = 0; $i <= $b -1; $i = $i +1) {	# se abre el for 1
			$numero = $a[$i];
			@partes = split (//, $numero);
			$cuantas = @partes;
			if ($cuantas == 1) {	# se abre el if 1
				$numero = $numero.$decimales20;
			$a[$i] = $numero;
			} elsif ($cuantas == 3) {
				$numero = $numero.$decimales19;
			$a[$i] = $numero;
			} elsif ($cuantas == 4) {
				$numero = $numero.$decimales18;
			$a[$i] = $numero;
			} elsif ($cuantas == 5) {
				$numero = $numero.$decimales17;
			$a[$i] = $numero;
			} elsif ($cuantas == 6) {
				$numero = $numero.$decimales16;
			$a[$i] = $numero;
			} elsif ($cuantas == 7) {
				$numero = $numero.$decimales15;
			$a[$i] = $numero;
			} elsif ($cuantas == 8) {
				$numero = $numero.$decimales14;
			$a[$i] = $numero;
			} elsif ($cuantas == 9) {
				$numero = $numero.$decimales13;
			$a[$i] = $numero;
			} elsif ($cuantas == 10) {
				$numero = $numero.$decimales12;
			$a[$i] = $numero;
			} elsif ($cuantas == 11) {
				$numero = $numero.$decimales11;
			$a[$i] = $numero;
			} elsif ($cuantas == 12) {
				$numero = $numero.$decimales10;
			$a[$i] = $numero;
			} elsif ($cuantas == 13) {
				$numero = $numero.$decimales9;
			$a[$i] = $numero;
			} elsif ($cuantas == 14) {
				$numero = $numero.$decimales8;
			$a[$i] = $numero;
			} elsif ($cuantas == 15) {
				$numero = $numero.$decimales7;
			$a[$i] = $numero;
			} elsif ($cuantas == 16) {
				$numero = $numero.$decimales6;
			$a[$i] = $numero;
			} elsif ($cuantas == 17) {
				$numero = $numero.$decimales5;
			$a[$i] = $numero;
			} elsif ($cuantas == 18) {
				$numero = $numero.$decimales4;
			$a[$i] = $numero;
			} elsif ($cuantas == 19) {
				$numero = $numero.$decimales3;
			$a[$i] = $numero;
			} elsif ($cuantas == 20) {
				$numero = $numero.$decimales2;
			$a[$i] = $numero;
			} elsif ($cuantas == 21) {
				$numero = $numero.$decimales1;
			$a[$i] = $numero;
			} # se cierra el if 1
		}	# se cierra el for 1	


		for ($i = 0; $i <= $b -1; $i = $i +1) {
			if ($i == 0) {
				print MYFILE ("  $a[$i]");		
			} elsif ($i > 0) {
				print MYFILE (" $a[$i]");		
			}
		}

		print MYFILE ("\n");
						
		close (MYFILE);
		
	} # se cierra el for de $count
	
	print ("Se analizaron los sigientes $numero_de_puntos genomas\n");
	foreach $dd (@lista_de_genomas){
		print ("$dd\n");
	}

	$dimensiones = @coordenadas;
	print ("En un espacio de $dimensiones dimensiones\n");
	
	#---------------------------------------------------------------------------------------------------------
	
		
} # se cierra el if de MEGA2

	#---------------------------------------------------------------------------------------------------------
	#---------------------------------------------------------------------------------------------------------	

#print ("Quieres lista de cuadrantes (a)? (esta parte del programa aun no esta lista)\n");
#$pregunta = <STDIN>;
#chop ($pregunta);

#if ($pregunta eq a) {
	#---------------------------------------------------------------------------------------------------------

#	open (MYFILE, ">>$archivolista.cuadrantes_8D") || die ("No puedo abrir $archivolista.cuadrantes_8D\n");
	
#	foreach $paso (@lista_de_genomas) {

#		if ($super_arreglo{$paso.X} > 0 && $super_arreglo{$paso.Y} > 0 && $super_arreglo{$paso.Z} > 0) {
#			print MYFILE ("$paso	A\n");
#		} elsif  ($super_arreglo{$paso.X} > 0 && $super_arreglo{$paso.Y} > 0 && $super_arreglo{$paso.Z} < 0) {
#			print MYFILE ("$paso	B\n");		
#		} elsif  ($super_arreglo{$paso.X} > 0 && $super_arreglo{$paso.Y} < 0 && $super_arreglo{$paso.Z} < 0) {
#			print MYFILE ("$paso	C\n");		
#		} elsif  ($super_arreglo{$paso.X} > 0 && $super_arreglo{$paso.Y} < 0 && $super_arreglo{$paso.Z} > 0) {
#			print MYFILE ("$paso	D\n");		
#		} elsif  ($super_arreglo{$paso.X} < 0 && $super_arreglo{$paso.Y} > 0 && $super_arreglo{$paso.Z} < 0) {
#			print MYFILE ("$paso	E\n");		
#		} elsif  ($super_arreglo{$paso.X} < 0 && $super_arreglo{$paso.Y} > 0 && $super_arreglo{$paso.Z} > 0) {
#			print MYFILE ("$paso	F\n");		
#		} elsif  ($super_arreglo{$paso.X} < 0 && $super_arreglo{$paso.Y} < 0 && $super_arreglo{$paso.Z} > 0) {
#			print MYFILE ("$paso	G\n");		
#		} elsif  ($super_arreglo{$paso.X} < 0 && $super_arreglo{$paso.Y} < 0 && $super_arreglo{$paso.Z} < 0) {
#			print MYFILE ("$paso	H\n");		
#		}

#	} # se cierra el foreach


#	close (MYFILE);
	
	#---------------------------------------------------------------------------------------------------------
	

#}

 } # Quitar este if para que el resto del programa funcione
 
