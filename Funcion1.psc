//Programa que pide n notas, luego el programa descarta
//la menor nota y calcula el promedio con las restantes
Funcion p <- notas ()
	Escribir "Cuantas notas son? : "; Leer n
	s = 0
	Dimension v[n]
	menor1 = 99999
	para i=1 hasta n
		Repetir
			Escribir "Ingrese " i " nota: "; Leer v[i]//[0,10]
		Hasta Que v[i] >= 0 y v[i] <=10
		
		si v[i] < menor1
			menor1 = v[i]
		FinSi
	FinPara
	para i=1 hasta n
		si v[i] > menor1
			s = v[i] + s
		FinSi
	FinPara
	p = s/(n-1)
	Escribir sin saltar "El promedio de las notas restantes es: "
Fin Funcion

Funcion s<- suma_2_notas ()
	Escribir Sin Saltar "Ingrese Nota 1? "; Leer n1;
	Escribir Sin Saltar "Ingrese Nota 2? "; Leer n2;
	s = n1 + n2
Fin Funcion

Algoritmo Funcion1
	Escribir "Menú"
	Escribir "1. Promedio sin la menor notas"
	Escribir "2. Sumar dos notas"
	Escribir "Ingrese opción: "; Leer opc
	Segun opc Hacer
		1:
		    Escribir notas()
		2:
			Escribir suma_2_notas()
		3:
			Escribir "Opcion 3"
		De Otro Modo:
		    Escribir Sin Saltar "Opción no valida"
	Fin Segun
	Escribir notas()
	
FinAlgoritmo
