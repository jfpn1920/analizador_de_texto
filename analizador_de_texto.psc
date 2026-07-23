Algoritmo analizador_de_texto
	Definir opcion, totalTextos Como Entero
	Definir i Como Entero
	Definir siguienteID Como Entero
	Definir encontrado Como Logico
	Definir idBuscar Como Entero
	Definir id Como Entero
	Definir texto Como Caracter
	Definir cantidadPalabras Como Entero
	Definir cantidadCaracteres Como Entero
	Definir idioma Como Caracter
	Definir tipoTexto Como Caracter
	Definir estado Como Caracter
	Dimension id[100]
	Dimension texto[100]
	Dimension cantidadPalabras[100]
	Dimension cantidadCaracteres[100]
	Dimension idioma[100]
	Dimension tipoTexto[100]
	Dimension estado[100]
	totalTextos <- 0
	siguienteID <- 1
	//----------------------------------------//
	//--|menu_principal_analizador_de_texto|--//
	//----------------------------------------//
	Repetir
		Escribir "menu principal analizador de texto"
		Escribir "1) registrar texto"
		Escribir "2) editar texto"
		Escribir "3) eliminar texto"
		Escribir "4) buscar texto"
		Escribir "5) listar textos"
		Escribir "6) ver detalles del texto"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//---------------------//
			//--|registrar_texto|--//
			//---------------------//
			1:
				Escribir "registrar texto"
				id[totalTextos+1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalTextos+1]
				Escribir "ingrese el texto:"
				Leer texto[totalTextos+1]
				Escribir "ingrese la cantidad de palabras:"
				Leer cantidadPalabras[totalTextos+1]
				Escribir "ingrese la cantidad de caracteres:"
				Leer cantidadCaracteres[totalTextos+1]
				Escribir "ingrese el idioma:"
				Leer idioma[totalTextos+1]
				Escribir "ingrese el tipo de texto:"
				Leer tipoTexto[totalTextos+1]
				Escribir "ingrese el estado:"
				Leer estado[totalTextos+1]
				totalTextos <- totalTextos + 1
				Escribir "texto registrado correctamente."
			//------------------//
			//--|editar_texto|--//
			//------------------//
			2:
				Escribir "editar texto"
				Si totalTextos = 0 Entonces
					Escribir "no hay textos registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalTextos Hacer
						Escribir id[i], " | ", texto[i], " | ", cantidadPalabras[i], " | ", cantidadCaracteres[i], " | ", tipoTexto[i], " | ", idioma[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del texto:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalTextos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo texto:"
							Leer texto[i]
							Escribir "ingrese la nueva cantidad de palabras:"
							Leer cantidadPalabras[i]
							Escribir "ingrese la nueva cantidad de caracteres:"
							Leer cantidadCaracteres[i]
							Escribir "ingrese el nuevo tipo de texto:"
							Leer tipoTexto[i]
							Escribir "ingrese el nuevo idioma:"
							Leer idioma[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "texto editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un texto con ese id."
					FinSi
				FinSi
			//--------------------//
			//--|eliminar_texto|--//
			//--------------------//
			3:
				Escribir "eliminar texto"
				Si totalTextos = 0 Entonces
					Escribir "no hay textos registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalTextos Hacer
						Escribir id[i], " | ", texto[i], " | ", cantidadPalabras[i], " | ", cantidadCaracteres[i], " | ", tipoTexto[i], " | ", idioma[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del texto:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalTextos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalTextos Entonces
								Para j <- i Hasta totalTextos - 1 Hacer
									id[j] <- id[j+1]
									texto[j] <- texto[j+1]
									cantidadPalabras[j] <- cantidadPalabras[j+1]
									cantidadCaracteres[j] <- cantidadCaracteres[j+1]
									tipoTexto[j] <- tipoTexto[j+1]
									idioma[j] <- idioma[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalTextos <- totalTextos - 1
							Escribir "texto eliminado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un texto con ese id."
					FinSi
				FinSi
			//------------------//
			//--|buscar_texto|--//
			//------------------//
			4:
				Escribir "buscar texto"
				Si totalTextos = 0 Entonces
					Escribir "no hay textos registrados."
				SiNo
					Escribir "ingrese el id del texto:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalTextos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", texto[i], " | ", cantidadPalabras[i], " | ", cantidadCaracteres[i], " | ", tipoTexto[i], " | ", idioma[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un texto con ese id."
					FinSi
				FinSi
			//-------------------//
			//--|listar_textos|--//
			//-------------------//
			5:
				Escribir "listar textos"
				Si totalTextos = 0 Entonces
					Escribir "no hay textos registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalTextos Hacer
						Escribir id[i], " | ", texto[i], " | ", cantidadPalabras[i], " | ", cantidadCaracteres[i], " | ", tipoTexto[i], " | ", idioma[i], " | ", estado[i]
					FinPara
				FinSi
			//------------------------//
			//--|ver_detalles_texto|--//
			//------------------------//
			6:
				Escribir "ver detalles del texto"
				Si totalTextos = 0 Entonces
					Escribir "no hay textos registrados."
				SiNo
					Escribir "ingrese el id del texto:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalTextos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles del texto"
							Escribir "id: ", id[i]
							Escribir "texto: ", texto[i]
							Escribir "cantidad de palabras: ", cantidadPalabras[i]
							Escribir "cantidad de caracteres: ", cantidadCaracteres[i]
							Escribir "tipo de texto: ", tipoTexto[i]
							Escribir "idioma: ", idioma[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un texto con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalTextos = 0 Entonces
					Escribir "no hay textos registrados."
				SiNo
					sumaPalabras <- 0
					sumaCaracteres <- 0
					mayorPalabras <- cantidadPalabras[1]
					menorPalabras <- cantidadPalabras[1]
					mayorCaracteres <- cantidadCaracteres[1]
					menorCaracteres <- cantidadCaracteres[1]
					Para i <- 1 Hasta totalTextos Hacer
						sumaPalabras <- sumaPalabras + cantidadPalabras[i]
						sumaCaracteres <- sumaCaracteres + cantidadCaracteres[i]
						Si cantidadPalabras[i] > mayorPalabras Entonces
							mayorPalabras <- cantidadPalabras[i]
						FinSi
						Si cantidadPalabras[i] < menorPalabras Entonces
							menorPalabras <- cantidadPalabras[i]
						FinSi
						Si cantidadCaracteres[i] > mayorCaracteres Entonces
							mayorCaracteres <- cantidadCaracteres[i]
						FinSi
						Si cantidadCaracteres[i] < menorCaracteres Entonces
							menorCaracteres <- cantidadCaracteres[i]
						FinSi
					FinPara
					promedioPalabras <- sumaPalabras / totalTextos
					promedioCaracteres <- sumaCaracteres / totalTextos
					Escribir "estadistica general"
					Escribir "total de textos: ", totalTextos
					Escribir "promedio de palabras: ", promedioPalabras
					Escribir "promedio de caracteres: ", promedioCaracteres
					Escribir "mayor cantidad de palabras: ", mayorPalabras
					Escribir "menor cantidad de palabras: ", menorPalabras
					Escribir "mayor cantidad de caracteres: ", mayorCaracteres
					Escribir "menor cantidad de caracteres: ", menorCaracteres
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar el analizador de texto."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo