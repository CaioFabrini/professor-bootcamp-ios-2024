import UIKit


// MARK: Exercício 1: Formatação de Strings
// Declare uma variável produto do tipo String e atribua a ela o valor "Notebook". Declare outra variável preco do tipo Double e atribua a ela o valor 3999.99. Formate e imprima uma frase que diga "O produto Notebook custa R$ 3999.99".





// MARK: Exercício 2: Média de Três Números
// Declare três variáveis com números inteiros. Calcule e imprima a média desses números.
// print("Média dos três números: \(variavel)")





// MARK: Exercício 3: Concatenação de Strings
// Declare duas variáveis de tipo String para o nome e sobrenome de uma pessoa. Concatene as duas strings em uma terceira variável e imprima o nome completo no console.
// print("Nome completo: \(variavel)")





// MARK: Exercício 4: Conversão de Tipagem
// Declare uma variável idadeString com o valor "25". Converta essa string para um valor do tipo Int. Em seguida, declare uma variável alturaString com o valor "1.75" e converta-a para um valor do tipo Double. Imprima ambos os valores convertidos.
// print("Idade: \(variavel)")
// print("Altura: \(variavel)")





// MARK: Exercício 5: Operações Aritméticas
// Declare duas variáveis do tipo Float, numeroA e numeroB, com valores de sua escolha. Calcule e imprima a soma, subtração, multiplicação e divisão desses valores.
//print("Soma: \(variavel)")
//print("Subtração: \(variavel)")
//print("Multiplicação: \(variavel)")
//print("Divisão: \(variavel)")





// MARK: Exercício 6: Conversão de Tipagem de Float para Int
// Declare uma variável pesoFloat do tipo Float e atribua a ela o valor 70.5. Converta essa variável para o tipo Int e imprima o valor convertido.
//print("Peso como Int: \(variavel)")





// MARK: Exercício 7: Divisão de Conta
// Declare uma variável totalConta do tipo Double com o valor da conta de um restaurante. Declare uma variável numeroDePessoas do tipo Int com o número de pessoas que dividirão a conta. Calcule e imprima quanto cada pessoa deve pagar.
//print("Cada pessoa deve pagar: R$ \(variavel)")





// MARK: Exercício 8: Calculadora de IMC
// Declare variáveis peso e altura do tipo Double. Calcule e imprima o Índice de Massa Corporal (IMC) usando a fórmula: IMC = peso / (altura * altura).
//print("O IMC é: \(variavel)")




// MARK: Exercício 9: Segundos em um Ano
// Calcule e imprima o número de segundos em um ano (considere um ano com 365 dias).
//print("Número de segundos em um ano: \(variavel)")





// MARK: Exercício 10: Comparação de Números
// Declare duas variáveis primeiroNumero e segundoNumero do tipo Int. Verifique se numero1 é maior que numero2 e imprima o resultado.
// print("O primeiro número é maior que o segundo: \(variavel)")









// --------- Respostas

// Exercício 1: Formatação de Strings
// Declare uma variável produto do tipo String e atribua a ela o valor "Notebook". Declare outra variável preco do tipo Double e atribua a ela o valor 3999.99. Formate e imprima uma frase que diga "O produto Notebook custa R$ 3999.99".

let produto: String = "Notebook"
let preco: Double = 3999.99

let mensagem = "O produto \(produto) custa R$ \(preco)"
print(mensagem)


// Exercício 2: Média de Três Números
// Declare três variáveis com números inteiros. Calcule e imprima a média desses números.

let numero1: Int = 10
let numero2: Int = 20
let numero3: Int = 30

let media = (numero1 + numero2 + numero3) / 3
print("Média dos três números: \(media)")

// Exercício 3: Concatenação de Strings
// Declare duas variáveis de tipo String para o nome e sobrenome de uma pessoa. Concatene as duas strings em uma terceira variável e imprima o nome completo no console.

let nome: String = "Maria"
let sobrenome: String = "Silva"

let nomeCompleto = nome + " " + sobrenome
print("Nome completo: \(nomeCompleto)")

// Exercício 4: Conversão de Tipagem
// Declare uma variável idadeString com o valor "25". Converta essa string para um valor do tipo Int. Em seguida, declare uma variável alturaString com o valor "1.75" e converta-a para um valor do tipo Double. Imprima ambos os valores convertidos.

let idadeString = "25"
let idadeInt = Int(idadeString) ?? 0
print("Idade: \(idadeInt)")

let alturaString = "1.75"
let alturaDouble = Double(alturaString) ?? 0.0
print("Altura: \(alturaDouble)")


// Exercício 5: Operações Aritméticas
// Declare duas variáveis do tipo Float, numeroA e numeroB, com valores de sua escolha. Calcule e imprima a soma, subtração, multiplicação e divisão desses valores.

let numeroA: Float = 12.5
let numeroB: Float = 3.5

let soma = numeroA + numeroB
let subtracao = numeroA - numeroB
let multiplicacao = numeroA * numeroB
let divisao = numeroA / numeroB

print("Soma: \(soma)")
print("Subtração: \(subtracao)")
print("Multiplicação: \(multiplicacao)")
print("Divisão: \(divisao)")

// Exercício 6: Conversão de Tipagem de Float para Int
// Declare uma variável pesoFloat do tipo Float e atribua a ela o valor 70.5. Converta essa variável para o tipo Int e imprima o valor convertido.


let pesoFloat: Float = 70.5
let pesoInt: Int = Int(pesoFloat)
print("Peso como Int: \(pesoInt)")


// Exercício 7: Divisão de Conta
// Declare uma variável totalConta do tipo Double com o valor da conta de um restaurante. Declare uma variável numeroDePessoas do tipo Int com o número de pessoas que dividirão a conta. Calcule e imprima quanto cada pessoa deve pagar.

let totalConta: Double = 150.75
let numeroDePessoas: Int = 5

let valorPorPessoa = totalConta / Double(numeroDePessoas)
print("Cada pessoa deve pagar: R$ \(valorPorPessoa)")

// Exercício 8: Calculadora de IMC
// Declare variáveis peso e altura do tipo Double. Calcule e imprima o Índice de Massa Corporal (IMC) usando a fórmula: IMC = peso / (altura * altura).

let peso: Double = 70.0
let altura: Double = 1.75

let imc = peso / (altura * altura)
print("O IMC é: \(imc)")

// Exercício 9: Segundos em um Ano
// Calcule e imprima o número de segundos em um ano (considere um ano com 365 dias).

let segundosPorMinuto = 60
let minutosPorHora = 60
let horasPorDia = 24
let diasPorAno = 365

let segundosPorAno = segundosPorMinuto * minutosPorHora * horasPorDia * diasPorAno
print("Número de segundos em um ano: \(segundosPorAno)")

// Exercício 10: Comparação de Números
// Declare duas variáveis primeiroNumero e segundoNumero do tipo Int. Verifique se numero1 é maior que numero2 e imprima o resultado.
// print("O primeiro número é maior que o segundo: \(variavel)")

let primeiroNumero: Int = 15
let segundoNumero: Int = 10

let numeroMaior = primeiroNumero > segundoNumero
print("O primeiro número é maior que o segundo: \(numeroMaior)")
