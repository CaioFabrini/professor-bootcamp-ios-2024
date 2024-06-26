//
//  main.swift
//  Desafios Conceitos Basicos Licao de casa
//
//  Created by Caio Fabrini on 08/06/24.
//

import Foundation

// MARK: Exercício 1: Cálculo de Desconto
// Declare variáveis precoOriginal e percentualDesconto do tipo Double. Calcule o valor do desconto e o preço final após aplicar o desconto. Imprima ambos.
//print("Valor do desconto: R$ \(variavel)")
//print("Preço final após desconto: R$ \(variavel)")


// MARK: Exercício 2: String Interpolada
// Declare variáveis cidade e estado do tipo String e populacao do tipo Int. Crie uma string interpolada que imprima uma frase informando a cidade, o estado e a população.


// MARK: Exercício 3: Concatenando e Calculando
// Declare variáveis quantidade do tipo Int e precoUnitario do tipo Double. Calcule o valor total multiplicando a quantidade pelo preço unitário e imprima uma mensagem formatada com o resultado.
//print("O valor total para X itens é: R$ X")


// MARK: Exercício 4: Convertendo Celsius para Fahrenheit
// Declare uma variável celsius do tipo Double. Converta essa temperatura para Fahrenheit usando a fórmula F = C * 9/5 + 32 e imprima o resultado.
//print("Temperatura em Fahrenheit: \(variavel)")


// MARK: Exercício 5: Conversão de Idade para Dias
// Declare uma variável idade do tipo Int. Calcule e imprima a idade em dias (considerando 365 dias por ano).
//print("Idade em dias: \(variavel)")


// MARK: Exercício 6: Calculando Salário Anual
// Declare uma variável salarioMensal do tipo Double. Calcule e imprima o salário anual.
//print("Salário anual: \(variavel)")


// MARK: Exercício 7: Multiplicação de Float por Int
// Declare uma variável valorFloat do tipo Float e uma variável multiplicador do tipo Int. Calcule e imprima o resultado da multiplicação.
//print("Resultado da multiplicação: \(variavel)")


// MARK: Exercício 8: Concatenando String e Número
// Declare uma variável texto do tipo String e uma variável numero do tipo Int. Concatene-os e imprima o resultado.


// MARK: Exercício 9: Calculando Desconto
// Declare variáveis precoOriginal e percentualDesconto do tipo Double. Calcule o valor final após aplicar o desconto e imprima o resultado.
//print("Preço final com desconto: \(variavel)")


// MARK: Exercício 10: Conversão de Boolean para String
// Declare uma variável estaChovendo do tipo Bool e atribua a ela um valor. Converta essa variável para String e imprima o resultado.
//print("Está chovendo: \(variavel)")


// MARK: Exercício 11: Calculando Diferença de Idades
// Declare duas variáveis idadePessoa1 e idadePessoa2 do tipo Int. Calcule e imprima a diferença entre as idades.
//print("Diferença de idades: \(variavel) anos")


// MARK: Exercício 12: Concatenando Números em uma String
// Declare três variáveis dia, mes e ano do tipo Int. Concatene esses valores em uma string no formato "dd/mm/yyyy" e imprima o resultado.
//print("Data formatada: \(variavel)")














// MARK: - RESPOSTAS!!! LEMBRESE-SE, PROGRAMAR NÃO É DECORAR, E SIM ENTENDER E SABER OQUE VOCÊ ESCREVE E O PORQUE FUNCIONA E O PORQUE NÃO FUNCIONA!














// MARK: Exercício 1: Cálculo de Desconto
// Declare variáveis precoOriginal e percentualDesconto do tipo Double. Calcule o valor do desconto e o preço final após aplicar o desconto. Imprima ambos.

let precoOriginal: Double = 500.0
let percentualDesconto: Double = 25.0

let valorDesconto = precoOriginal * (percentualDesconto / 100)
let precoFinal = precoOriginal - valorDesconto

print("Valor do desconto: R$ \(valorDesconto)")
print("Preço final após desconto: R$ \(precoFinal)")

// MARK: Exercício 2: String Interpolada
// Declare variáveis cidade e estado do tipo String e populacao do tipo Int. Crie uma string interpolada que imprima uma frase informando a cidade, o estado e a população.

let cidade: String = "São Paulo"
let estado: String = "SP"
let populacao: Int = 12345678

let descricao = "A cidade de \(cidade), \(estado), tem uma população de \(populacao) habitantes."
print(descricao)

// MARK: Exercício 3: Concatenando e Calculando
// Declare variáveis quantidade do tipo Int e precoUnitario do tipo Double. Calcule o valor total multiplicando a quantidade pelo preço unitário e imprima uma mensagem formatada com o resultado.

let quantidade: Int = 5
let precoUnitario: Double = 19.99

let valorTotal = Double(quantidade) * precoUnitario
let mensagem = "O valor total para \(quantidade) itens é: R$ \(valorTotal)"
print(mensagem)

// Exercício 4: Convertendo Celsius para Fahrenheit
// Declare uma variável celsius do tipo Double. Converta essa temperatura para Fahrenheit usando a fórmula F = C * 9/5 + 32 e imprima o resultado.

let celsius: Double = 25.0
let fahrenheit = celsius * 9 / 5 + 32
print("Temperatura em Fahrenheit: \(fahrenheit)")

// Exercício 5: Conversão de Idade para Dias
// Declare uma variável idade do tipo Int. Calcule e imprima a idade em dias (considerando 365 dias por ano).

let idade: Int = 25
let idadeEmDias = idade * 365
print("Idade em dias: \(idadeEmDias)")


//Exercício 6: Calculando Salário Anual
// Declare uma variável salarioMensal do tipo Double. Calcule e imprima o salário anual.

let salarioMensal: Double = 3000.0
let salarioAnual = salarioMensal * 12
print("Salário anual: \(salarioAnual)")

//Exercício 7: Multiplicação de Float por Int
// Declare uma variável valorFloat do tipo Float e uma variável multiplicador do tipo Int. Calcule e imprima o resultado da multiplicação.

let valorFloat: Float = 47.80
let multiplicador: Int = 3
let resultado = valorFloat * Float(multiplicador)
print("Resultado da multiplicação: \(resultado)")

//Exercício 8: Concatenando String e Número
// Declare uma variável texto do tipo String e uma variável numero do tipo Int. Concatene-os e imprima o resultado.

let texto: String = "O número é "
let numero: Int = 78
let resultadoTotal = texto + String(numero)
print(resultadoTotal)

//Exercício 9: Calculando Desconto
// Declare variáveis precoOriginal e percentualDesconto do tipo Double. Calcule o valor final após aplicar o desconto e imprima o resultado.

let precoOriginalSemDesconto: Double = 1240.0
let percentualDescontoProduto: Double = 45.0
let valorDescontoTotal = precoOriginalSemDesconto * (percentualDescontoProduto / 100)
let precoFinalComDesconto = precoOriginalSemDesconto - valorDescontoTotal
print("Preço final com desconto: \(precoFinalComDesconto)")


//Exercício 10: Conversão de Boolean para String
// Declare uma variável estaChovendo do tipo Bool e atribua a ela um valor. Converta essa variável para String e imprima o resultado.

let estaChovendo: Bool = true
let estaChovendoString: String = String(estaChovendo)
print("Está chovendo: \(estaChovendo)")

//Exercício 11: Calculando Diferença de Idades
// Declare duas variáveis idadePessoa1 e idadePessoa2 do tipo Int. Calcule e imprima a diferença entre as idades.

let idadePessoa1: Int = 30
let idadePessoa2: Int = 22
let diferencaIdades = idadePessoa1 - idadePessoa2
print("Diferença de idades: \(diferencaIdades) anos")

//Exercício 12: Concatenando Números em uma String
// Declare três variáveis dia, mes e ano do tipo Int. Concatene esses valores em uma string no formato "dd/mm/yyyy" e imprima o resultado.

let dia: Int = 15
let mes: Int = 8
let ano: Int = 2024
let dataFormatada = String(dia) + "/" + String(mes) + "/" + String(ano)
print("Data formatada: \(dataFormatada)")








