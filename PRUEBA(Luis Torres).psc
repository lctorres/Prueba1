Proceso sin_titulo
	Definir opcion Como Entero;
	
	Repetir
		Limpiar Pantalla;
		
		Escribir "======================";
		Escribir "         MENU         ";
		Escribir "1.- Secuencial";
		Escribir "2.- Condicional Si entonces";
		Escribir "3.- Condicional Si entonces anidado";
		Escribir "4.- Condicional Según";
		Escribir "5.- Repetitiva Mientras";
		Escribir "6.- Repetitiva Repetir";
		Escribir "7.- Repetitiva Para";
		Escribir "8.- Arreglo Simple";
		Escribir "9.- Arreglo Bidimensional";
		Escribir "10.- Salir";
		Escribir "======================";
		
		Leer opcion;
		
	Hasta Que opcion>=1 Y opcion<=10
	
	Segun opcion Hacer
		1:
			Definir n1,n2,n3 Como Real;
			Escribir "Ingrese numeros:";
			Leer n1,n2,n3;
			Escribir (n1+n2+n3)/3;
		2:
			Definir n1 Como Caracter;
			Definir g1 Como Caracter;
			Escribir "Ingrese Nombre:";
			Leer n1;
			Escribir "Ingrese Genero: (M o F)";
			Leer g1;
			Si g1="M" Entonces
				Escribir "Baño Hombre";
			SiNo
				Escribir "Baño Mujer";
			FinSi
		3:
			Definir n,g,d Como Caracter;
			Escribir "Ingrese Nombre:";
			Leer n;
			Escribir "Ingrese Genero: (M/F)";
			Leer g;
			Escribir "Desea utilizar Baño o Ducha (B/D)";
			Leer d;
			Si g="M" Entonces
				Escribir "Baño Hombre";
			SiNo
				Escribir "Baño Mujer";
			FinSi
			Si d="B" Entonces
				Escribir "Valor a pagar: $250";
			SiNo
				Escribir "Valor a pagar: $2.500";
			FinSi
		4:
			secuencia_de_acciones_4;
		5:
			Definir acum, cont Como Entero;
			Definir num, i Como Entero;
			cont<-0;
			acum<-0;
			Para i<-1 Hasta 100 Con Paso 1 Hacer
				Escribir "Ingrese numero";
				Leer num;
				cont<-cont+1;
				acum<-acum+num;
				
				Si num=0 Entonces
					cont<-cont-1;
					Escribir "Ingreso ", cont, " numeros";
					Escribir "Promedio de numeros ingresados es: ", acum/cont;
				FinSi
			FinPara
		6:
			Definir cont Como Entero;
			Definir nom Como Caracter;
			Definir i Como Entero;
			cont<-0;
			Para i<-1 Hasta 100 Con Paso 1 Hacer
				Escribir "Ingrese nombres que comiencen con J";
				Leer nom;
				cont<-cont+1;
				
				Si nom="Juan" Entonces
					Escribir "GANASTE";
					Escribir "Lo realizaste en ", cont, " intentos";
				FinSi
			FinPara
		7:
			Definir nom Como Caracter;
			Dimension nom[10];
			
			Definir i Como Entero;
			Definir j Como Entero;
			Definir existe Como Logico;
			
			Para i<-0 Hasta 9 Con Paso 1 Hacer
				Escribir "Ingresar Nombre";
				Leer nom[i];
				existe<-Falso;
				
				Para j<-0 Hasta i Con Paso 1 Hacer
					Si nom[i]=nom[j] y i<>j Entonces
						existe<-Verdadero;
					FinSi
				FinPara
				
				Si existe Entonces
					i<-i-1;
					Escribir "Nombre Repetido";
				FinSi
			FinPara
			
			Para i<-0 Hasta 9 Con Paso 1 Hacer
				Escribir Sin Saltar"[", nom[i], "]";
			FinPara
		8:
			Definir nom Como Caracter;
			Definir n Como Entero;
			Escribir "Cuantos alumnos participan en el Curso Full Satck Java Traine?";
			Leer n;
			
			Dimension nom[n];
			Definir i Como Entero;
			Para i<-0 Hasta n-1 Con Paso 1 Hacer
				Escribir "Ingresa el nombre del Alumno";
				Leer nom[i];
			FinPara
			
			Para i<-0 Hasta n-1 Con Paso 1 Hacer
				Escribir nom[i], "";
			FinPara
		9:
			Definir nom, ape, em Como Caracter;
			Definir n, fon Como Entero;
			
			Escribir "Cuantos alumnos participan en el Curso Full Satck Java Traine?";
			Leer n;
			
			Dimension nom[n];
			Dimension ape[n];
			Dimension fon[n];
			Dimension em[n];
			Definir i Como Entero;
			
			Para i<-0 Hasta n-1 Con Paso 1 Hacer
				Escribir "Ingresa el Nombre del Alumno";
				Leer nom[i];
				Escribir "Ingresa el Apellido del Alumno";
				Leer ape[i];
				Escribir "Ingresa el Fono del Alumno";
				Leer fon[i];
				Escribir "Ingresa el E-Mail del Alumno";
				Leer em[i];
			FinPara
			
			Para i<-0 Hasta n-1 Con Paso 1 Hacer
				Escribir Sin Saltar nom[i], " ", ape[i], " ", fon[i], " ", em[i];
			FinPara
		10:
			Escribir "Salir";
		De Otro Modo:
			secuencia_de_acciones_dom
	FinSegun
	
FinProceso

//SubProceso resultado <- promedio(n1, n2, n3)
//	Definir resultado Como Real;
//	resultado<-(n1+n2+n3)/3;
//FinSubProceso
	