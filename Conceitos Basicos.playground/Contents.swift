import UIKit


// Oque é uma variavel?

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

print(comidaPreferida)

comidaPreferida = "Japones"
comidaPreferida = "Abobora"

print(comidaPreferida)
print(comidaPreferida)

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

print(numeroFloat)
print(numeroDouble)

// Operadores Logicos

// Adição

var numeroAdicaoUm: Int = 500
var numeroAdicaoDois: Int = 200
var resultadoAdicao: Int = numeroAdicaoUm + numeroAdicaoDois
print(resultadoAdicao)

// Subtração

var numeroSubtracaoUm: Int = 300
var numeroSubtracaoDois: Int = 200
var resultadoSubtracao: Int = numeroSubtracaoUm - numeroSubtracaoDois
print(resultadoSubtracao)

// Multiplicação

var numeroMultiplicacaoUm: Int = 10
var numeroMultiplicacaoDois: Int = 20
var resultadoMultiplicacao: Int = numeroMultiplicacaoUm * numeroMultiplicacaoDois
print(resultadoMultiplicacao)

// Divisão

var numeroDivisaoUm: Int = 10
var numeroDivisaoDois: Int = 10
var resultadoDivisao: Int = numeroDivisaoUm / numeroDivisaoDois
print(resultadoDivisao)


// Concatenação
// É quando juntamos valores com base em uma ADIÇÃO

var frase1: String = "Olá, qual a sua idade: "
var frase2: Int = 21
var frase3: String = " anos"

var resultadoConcatenacao: String = frase1 + String(frase2) + frase3
print(resultadoConcatenacao)

// Interpolação
// Com a interpolação já converte o tipo já de forma direta para STRING
// Para utiliza-la é muito simples, basta colocar no local de sua preferencia a \() e dentro do parentes o seu valor para apresentar na string

var resultadoInterpolacao: String = "Olá, qual a sua idade: \(frase2) anos"
print(resultadoInterpolacao)


// Converter Tipagens

// Converter Int, Double, Float para String!!!
// Quando queremos converter um tipo Int, Double, Float para String, você precisa apenas informar o valor dentro dos parenteses:
// Segue exemplo abaixo:

var umValorIntParaString: Int = 100
var textoInt: String = String(umValorIntParaString)
print(textoInt)

// String -> para INT

// Todas as vezes que for converter uma string para qualquer tipagem ela SEMPRE será opcional

var minhaIdadeString: String = "22"
var minhaIdadeInt: Int = Int(minhaIdadeString) ?? 0
print(minhaIdadeInt)

// Atalhos de teclado:
// Duplicar Linha de codigo: CMD + D
// Selecionar mais de um local ao mesmo tempo: Control + Shift
