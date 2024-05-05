programa
{
	
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		//Declaração de valores
		inteiro Pe = 0
		//Pe: Programa escolhido

		escreva ("Este é um programa que calcula o valor de x em uma equação do 2º grau!") //Apresentação

		escreva ("\n\n01: ax²+bx+c=0;") //Opção
		escreva ("\n02: ax²+bx=0;") //Opção
		escreva ("\n03: ax²+c=0.") //Opção

		escreva ("\n\nEscolha o número correspondente ao tipo de equação do 2º grau na qual desejas encontrar o valor de x: ")
		leia (Pe) //Entrada 
		limpa ()

		escolha (Pe) 
		{
			caso 01: //ax²+bx+c=0
			//Declaração de Valores
			real dec, aec, bec, cec, xec, x1ec, x2ec = 0.0
			//dec: Valor de delta
			//aec: Valor de a
			//bec: Valor de b
			//cec: Valor de c
			//xec: Resultado caso delta seja igual à 0 
			//x1ec: Primeiro resultado caso delta seja maior que 0
			//x2ec: Segundo resultado caso delta seja maior que 0
			//ec: Equação completa
		
			escreva ("Você escolheu a opção para calcular o valor de x em equações do 2º grau do tipo ax²+bx+c=0!") //Apresentação

			escreva ("\n\nInforme o valor de a: ")
			leia (aec) //Entrada
			escreva ("\nInforme o valor de b: ")
			leia (bec) //Entrada
			escreva ("\nInforme o valor de c: ")
			leia (cec) //Entrada
			limpa ()

			//Processamento
			dec = bec * bec - 4 * aec * cec 

			se (dec > 0) //caso 1
			{
				//Processamento
				x1ec = (- bec + mat.raiz(dec, 2)) / (2 * aec)
				x2ec = (- bec - mat.raiz(dec, 2)) / (2 * aec)	

				escreva ("S={", mat.arredondar(x1ec, 2), ",", mat.arredondar(x2ec, 2), "}") //Saída
			}

			se (dec < 0)  //Caso 2
			{
				escreva ("S={ }") //Saída
			}
			
			se (dec == 0) //Caso 3
			{
				//Processamento
				xec = (- bec + 0) / (2 * aec)
	
				escreva ("S={", mat.arredondar  (xec, 2), "}") //Saída
			}
			pare


			caso 02: //ax²+bx=0
			//Declaração de valores
			real aei1, bei1, x1ei1, x2ei1 = 0.0
			//aei1: Valor de a
			//bei1: Valor de b 
			//x1ei1: Primeiro resultado
			//x2ei1: Segundo resultado
			//ei1: Equação incompleta tipo 1

			escreva ("Você escolheu a opção para calcular o valor de x em equações do 2º grau do tipo ax²+bx=0!") //Apresentação

			escreva ("\n\nInforme o valor de a: ")
			leia (aei1) //Entrada
			escreva ("\nInforme o valor de b: ")
			leia (bei1) //Entrada
			limpa ()

			//Processamento
			x1ei1 = 0.0
			x2ei1 = - bei1 / aei1
 
			escreva ("S={", x1ei1, ",", mat.arredondar (x2ei1, 2),"}") //Saída
			pare


			caso 03: //ax²+c=0
			real aei2, cei2, xei2 = 0.0
			//aei2: Valor de a
			//cei2: Valor de c
			//xei2: Valor de x 
			//ei2: Equação incompleta tipo 2
		
			escreva ("Você escolheu a opção para calcular o valor de x em equações do 2º grau do tipo ax²+c=0!") //Apresentação


			escreva ("\n\nInforme o valor de a: ")
			leia (aei2) //Entrada
			escreva ("\nInforme o valor de c: ")
			leia (cei2) //Entrada
			limpa ()

			//Processamento
			xei2 = mat.arredondar (mat.raiz ((-cei2 / aei2), 2.0), 2)

			se (xei2 > 0.0)
			{
				escreva ("S={± ", mat.arredondar(xei2, 2), "}") //Saída
			}

			senao
			{
				escreva ("S={ }") //Saída
			}
			pare


			caso contrario:
			escreva ("Opção inválida!") //Informação
			escreva ("\nVocê inseriu um número que não corresponde a nenhuma das opções fornecidas!") //Explicação
			pare
		}
		escreva ("\n\nObrigado por utilizar o programa!") //Agradecimento
		
		//Créditos
		escreva ("\n\nProgramado por Paulo Sócrates de Souza P.")
		escreva ("\nEstudante do Instituto de Educação, Ciências e Tecnologia do Acre.")
		escreva ("\nCursando o 1º ano de Informática para Internet.")
		escreva ("\n\nPrograma feito no software Portugol Studio.\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1303; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */