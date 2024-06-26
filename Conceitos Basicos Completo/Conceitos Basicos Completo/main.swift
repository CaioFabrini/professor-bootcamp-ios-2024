//
//  main.swift
//  Conceitos Basicos Completo
//
//  Created by Caio Fabrini on 06/06/24.
//

import Foundation

//MARK: - Oque é uma variavel?

// Uma variável é um espaço reservado na memória do computador onde você pode armazenar e modificar valores durante a execução de um programa

// Imagine que você tem uma caixa onde pode guardar coisas. Cada vez que você quiser guardar algo diferente, você pode substituir o que está dentro por um novo item. No mundo da programação, essa caixa é chamada de "variável".

// Por exemplo, se você está criando um aplicativo e precisa guardar a idade de um usuário, você pode criar uma variável chamada idade e armazenar o número correspondente nela. A qualquer momento que você precisar dessa informação, você pode "olhar dentro da caixa" para ver o que está guardado lá.


// Como criar uma variavel:
// 1 passo: você escreve a palavra var
// 2 passo: defina um nome para essa variavel (ESSA É A PARTE MAIS IMPORTANTE DO SEU CODIGO)
// 3 passo: atribua a sua tipagem
// 4 passo: atribua um valor a variavel

// Exemplo:
// var meuNome: String = "Meu nome é Caio"

// Dicas:

// Uma variavel/constante NÃO PODE TER O MESMO NOME!! ELES NÃO PODEM REPETIR
// Utilizamos o padrão de nomenclatura "camelCase". Nele, a primeira letra da variável ou função é minúscula e as primeiras letras das palavras subsequentes são maiúsculas, sem espaços entre elas. Por exemplo: minhaVariavel, valorTotal, calcularIdadeUsuario. Jamais utilize caracteres especiais ou acentuação

var comidaPreferida = "Churrasco"

var sofrenome = "Fabrini"

//print(comidaPreferida)

comidaPreferida = "Japones"
comidaPreferida = "Abobora"

//print(comidaPreferida)
//print(comidaPreferida)

// Tipagem - TODAS SE INICIAM COM A PRIMEIRA LETRA MAIUSCULA


// Explicita / Implicita

// implicita
// É quando criamos uma variavel e não deixamos em evidencia sua respectiva TIPAGEM

// explicita
// É quando criamos uma variavel e deixamos em evidencia sua respectiva TIPAGEM

var tamanhoCalcado: Int = 10
var meuNovoTeste = "banana"


// É algo que definimos para que as nossas contantes/variaveis tenham de valor

// String
// São variaveis/constantes que apresentam seu valor como forma de TEXTO
// Para criar uma variavel do tipo STRING seu valor deve conter aspas duplas ""

var nome = "Caio"
var tipoChocolate = "Amargo"

// Int
// São variaveis/constantes que apresentam seu valor como números INTEIROS
// Para criar uma variavel do tipo INT seu valor deve conter apenas números inteiros

var idade = 21
var potencia = 500

// Bool - Booleano
// São variaveis/constantes que apresentam seu valor como verdadeiro(true) ou falso(false)

var desconto: Bool = false
var estaNaPromocao: Bool = true

// Float / Double
// São variaveis/constantes que apresentam seu valor como números reais
// Para criar uma variavel do tipo Float/Double seu valor deve conter apenas números reais
// OBS: Sempre utilizem o Double!!!!!

var numeroFloat: Float =   150.43248922342343
var numeroDouble: Double = 150.43248922342343

//print(numeroFloat)
//print(numeroDouble)

// Operadores Aritmeticos

// Adição

var numeroAdicaoUm: Int = 500
var numeroAdicaoDois: Int = 200
var resultadoAdicao: Int = numeroAdicaoUm + numeroAdicaoDois
//print(resultadoAdicao)

// Subtração

var numeroSubtracaoUm: Int = 300
var numeroSubtracaoDois: Int = 200
var resultadoSubtracao: Int = numeroSubtracaoUm - numeroSubtracaoDois
//print(resultadoSubtracao)

// Multiplicação

var numeroMultiplicacaoUm: Int = 10
var numeroMultiplicacaoDois: Int = 20
var resultadoMultiplicacao: Int = numeroMultiplicacaoUm * numeroMultiplicacaoDois
//print(resultadoMultiplicacao)

// Divisão

var numeroDivisaoUm: Int = 10
var numeroDivisaoDois: Int = 10
var resultadoDivisao: Int = numeroDivisaoUm / numeroDivisaoDois
//print(resultadoDivisao)


// Concatenação
// É quando juntamos valores com base em uma ADIÇÃO

var frase1: String = "Olá, qual a sua idade: "
var frase2: Int = 21
var frase3: String = " anos"

var resultadoConcatenacao: String = frase1 + String(frase2) + frase3
//print(resultadoConcatenacao)

// Interpolação
// Com a interpolação já converte o tipo já de forma direta para STRING
// Para utiliza-la é muito simples, basta colocar no local de sua preferencia a \() e dentro do parentes o seu valor para apresentar na string

var resultadoInterpolacao: String = "Olá, qual a sua idade: \(frase2) anos"
//print(resultadoInterpolacao)


// Converter Tipagens

// Converter Int, Double, Float para String!!!
// Quando queremos converter um tipo Int, Double, Float para String, você precisa apenas informar o valor dentro dos parenteses:
// Segue exemplo abaixo:

var umValorIntParaString: Int = 100
var textoInt: String = String(umValorIntParaString)
//print(textoInt)

// String -> para INT

// Todas as vezes que for converter uma string para qualquer tipagem ela SEMPRE será opcional

var minhaIdadeString: String = "22a"
var minhaIdadeInt: Int = Int(minhaIdadeString) ?? 0
//print(minhaIdadeInt)



// Opcionais
// As variaveis opcionais são MUITO utilizadas no nosso dia a dia. Essas variaveis sempre terão 2 estados, um com valor REAL(existente) ou como nil (valor nulo)
// OBS: NIL NÃO É ZERO -> NIL É NULO!!!!!!!!!!!!!


var minhaIdade: Int? = 10
print(minhaIdade ?? 0)
minhaIdade = nil
print(minhaIdade)

var nomeMae: String? = nil
print(nomeMae ?? "")


var idadeString: String = "22a"
var idadeInt: Int = Int(idadeString) ?? 0
print(idadeInt)


var minhaIdadeOption: Int? = 10
var minhaIdadeStringNew: String = String(minhaIdadeOption ?? 0)
print(minhaIdadeStringNew)


//  Constante -> let
//  Quando utilizar cada caso?
//  SEMPRE crie uma CONSTANTE!!!!!!!
// Caso precise alterar, fique tranquilo, o compilador vai te avisar, e é só você pressionar um fix ;)

let meuNomeHoje: String = "Caio"



// MARK: - Exercicios


// MARK: Exercício 1: Formatação de Strings
// Declare uma variável produto do tipo String e atribua a ela o valor "Notebook". Declare outra variável preco do tipo Double e atribua a ela o valor 3999.99. Formate e imprima uma frase que diga "O produto Notebook custa R$ 3999.99".


var produto: String = "Notebook"
var preco: Double = 3999.99
var fraseCompleta: String = "O produto \(produto) custa R$ \(preco)"
print(fraseCompleta)
//print("O produto \(produto) custa R$ \(preco)")


// MARK: Exercício 2: Média de Três Números
// Declare três variáveis com números inteiros. Calcule e imprima a média desses números.
// print("Média dos três números: \(variavel)")


var number1: Int = 10
var number2: Int = 9
var number3: Int = 4

//var media = (number1 + number2 + number3) / 3

var resultadoSomaTotal = number1 + number2 + number3
var media = resultadoSomaTotal / 3

print("Média dos três números: \(media)")


// MARK: Exercício 3: Concatenação de Strings
// Declare duas variáveis de tipo String para o nome e sobrenome de uma pessoa. Concatene as duas strings em uma terceira variável e imprima o nome completo no console.
// print("Nome completo: \(variavel)")

var nomeConcatenacao: String = "Caio"
var sobrenomeConcatenacao: String = "Fabrini"
var nomeCompleto: String = nomeConcatenacao + " " + sobrenomeConcatenacao
print(nomeCompleto)


// MARK: Exercício 4: Conversão de Tipagem
// Declare uma variável idadeString com o valor "25". Converta essa string para um valor do tipo Int. Em seguida, declare uma variável alturaString com o valor "1.75" e converta-a para um valor do tipo Double. Imprima ambos os valores convertidos.
// print("Idade: \(variavel)")
// print("Altura: \(variavel)")


var idadeStringExercicio: String = "25"
var idadeIntExercicio: Int = Int(idadeStringExercicio) ?? 0
print("Idade: \(idadeIntExercicio)")

var alturaString: String = "1.75"
var alturaDouble: Double = Double(alturaString) ?? 0.0
print("Altura: \(alturaDouble)")


// MARK: Exercício 5: Operações Aritméticas
// Declare duas variáveis do tipo Float, numeroA e numeroB, com valores de sua escolha. Calcule e imprima a soma, subtração, multiplicação e divisão desses valores.
//print("Soma: \(variavel)")
//print("Subtração: \(variavel)")
//print("Multiplicação: \(variavel)")
//print("Divisão: \(variavel)")

var numeroA: Float = 10
var numeroB: Float = 10

var somaExercicio: Float = numeroA + numeroB
var subtracaoExercicio: Float = numeroA - numeroB
var multiplicaoExercicio: Float = numeroA * numeroB
var divisaoExercicio: Float = numeroA / numeroB

print("Soma: \(somaExercicio)")
print("Subtração: \(subtracaoExercicio)")
print("Multiplicação: \(multiplicaoExercicio)")
print("Divisão: \(divisaoExercicio)")


// MARK: Exercício 6: Conversão de Tipagem de Float para Int
// Declare uma variável pesoFloat do tipo Float e atribua a ela o valor 70.5. Converta essa variável para o tipo Int e imprima o valor convertido.
//print("Peso como Int: \(variavel)")

let pesoFloat: Float = 70.5
let pesoInt = Int(pesoFloat)
print("Peso como Int: \(pesoInt)")



// MARK: Exercício 7: Divisão de Conta
// Declare uma variável totalConta do tipo Double com o valor da conta de um restaurante. Declare uma variável numeroDePessoas do tipo Int com o número de pessoas que dividirão a conta. Calcule e imprima quanto cada pessoa deve pagar.
//print("Cada pessoa deve pagar: R$ \(variavel)")


let totalConta: Double = 500.50
let numeroDePessoas: Int = 5
let valorPorPessoa: Double = totalConta / Double(numeroDePessoas)

print("Cada pessoa deve pagar: R$ \(valorPorPessoa)")




// MARK: Exercício 8: Calculadora de IMC
// Declare variáveis peso e altura do tipo Double. Calcule e imprima o Índice de Massa Corporal (IMC) usando a fórmula: IMC = peso / (altura * altura).
//print("O IMC é: \(variavel)")

let peso: Double = 81
let altura: Double = 1.82
let imc = peso / (altura * altura)
print("O IMC é: \(imc)")



// MARK: Exercício 9: Segundos em um Ano
// Calcule e imprima o número de segundos em um ano (considere um ano com 365 dias).
//print("Número de segundos em um ano: \(variavel)")

let dias = 365
let horasPorDia = 24
let segundosPorMinuto = 60
let minutosPorHora = 60
let totalSegundos = dias * horasPorDia * segundosPorMinuto * minutosPorHora
//print("Número de segundos em um ano: \(dias * horasPorDia * segundosPorMinuto * minutosPorHora)")
print("Número de segundos em um ano: \(totalSegundos)")




// MARK: Exercício 10: Comparação de Números
// Declare duas variáveis primeiroNumero e segundoNumero do tipo Int. Verifique se numero1 é maior que numero2 e imprima o resultado.
// print("O primeiro número é maior que o segundo: \(variavel)")

let primeiroNumero: Int = 10
let segundoNumero: Int = 20
let primeiroMaiorQueSegundo: Bool = primeiroNumero > segundoNumero
print("O primeiro número é maior que o segundo: \(primeiroMaiorQueSegundo)")





// Atalhos de teclado:
// Duplicar Linha de codigo: CMD + D
// Selecionar mais de um local ao mesmo tempo: Control + Shift
// Rodar o buid: CMR + R
// Como comentar rapido uma linha: CMD + /
// Como comentar rapido varias linha: Selecione tudo oque você quer comentar e pressione -> CMD + /
// Como pesquisar de forma rapida: CMD + F ele vai abrir a busca, com isso você pode colar o nome da variavel e pressione o return, que ele vai procurar em todo local do seu codigo onde está sendo chamado
