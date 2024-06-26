//
//  main.swift
//  RevisaoConteudoBasico
//
//  Created by Caio Fabrini on 13/06/24.
//

import Foundation

// Variaveis -> é uma referencia alocada na memória do comuputador
// Caracteristicas:
// Você precisa declara-la com 'var'
// A variavel pode variar o seu valor
// Uma variavel não pode ter o mesmo nome de outra já existente

var profissao: String = "programador"
profissao = "empresario"

// Constante
// Caracteristicas:
// Você precisa declara-la com 'let'
// A constante não pode variar o seu valor
// Uma constante não pode ter o mesmo nome de outra já existente

let idade: Int = 10

// Concatenação -> criando frases atraves de adição(soma)

let valorConcatenacao: Int = 10
let minhaIdadeFrase: String = "Minha idade é de: "
let anos: String = " anos"

//let fraseConcatenacao: String = minhaIdadeFrase + String(valorConcatenacao) + " " + anos
let fraseConcatenacao: String = minhaIdadeFrase + String(valorConcatenacao) + anos
//print(fraseConcatenacao)

// Interpolação -> é quando informamos para a nossa string qual vai ser o valor recebido naquela devida posição. Isso é demarcado pela barra invertida e abre e fecha parenteses \()
// Caracteristicas: Você não precisar tratar nenhuma tipagem real, pois qualquer conversão para String ele consegue tratar direto.

let valorInterpolacao: Int = 10
let fraseInterpolacao: String = "Minha idade é de: \(valorInterpolacao) anos"

// Opcionais -> Pode ou não existir valor
// Caracteristicas:
// Não necessita ser inicializada com valor
// Opcionais sempre são marcados com o simbolo de ?
// Necessita SEMPRE validar antes de utiliza-la, devido ao fato de ser nil!!!!!!!
// NIL NÃO É ZERO, NIL É NULOOOOOOO!!!!!!!!!
// JAMAIS utilizem o force unwrap(!)
// Sempre crie casos de contenção utilizando o (??)

var meuNomeOpcional: String? = nil
let meuNomeReal: String = meuNomeOpcional ?? ""
//print(meuNomeReal)

let idadeString: String = "222"
let idadeInt: Int = Int(idadeString) ?? 0
//print(idadeInt)


// Funcoes -> um bloco de codigo que tem a finalidade de conseguir ser reutilizavel quantas vezes quiser, como tambem abstrair a logica de situações complexas
// Caracteristicas:
// 4 tipos: Funcao sem parametro e sem retorno / Funcao com parametro e sem retorno / Funcao com parametro e com retorno / Funcao sem parametro e com retorno
// Toda funcao necessita de parentenses e abertura e fechamento de chaves
// SE CRIOU A FUNÇÃO, LEMBRE-SE DE CHAMA-LA!!!!!
// Se inicia com a palavra 'func'
// Pode ter retorno ou não
// Pode ter parametros ou não
// Pode ter muitos parametros
// Pode retornar qualquer tipagem
// Pode conter parametros de qualquer tipagem
// A parte principal de uma função é o NOME!!!! O NOME SEMPRE IRÁ DIZER OQUE ESSA FUNÇÃO VAI EXECUTAR!!!!!
// Toda função de retorno vai ter de forma explicita a seta -> e na frente a sua tipagem
// Parametro é aquilo que colocamos ENTRE o parentese (valor1: Int)
// Leu a palavra RETORNE/RETORNO significa que a função deve RETORNAR ALGO!!!

// função sem parametro, ela sempre vai ser executada da mesma forma!!!
//func calcularMedia() {
//  let nota1: Double = 10
//  let nota2: Double = 8
//  let nota3: Double = 7
//  let media: Double = (nota1 + nota2 + nota3) / 3
//  print("A media é \(media)")
//}

func calcularMedia(nota1: Double, nota2: Double, nota3: Double) {
  let media: Double = (nota1 + nota2 + nota3) / 3
  print("A media é \(media)")
}

//calcularMedia(nota1: 10, nota2: 8, nota3: 8)

//func exibirValoresAritimeticos(valor1: Int, valor2: Int) {
//   print("Soma: \(valor1 + valor2), Subtracao: \(valor1 - valor2), Multiplicação: \(valor1 * valor2), Divisão: \(valor1 / valor2)")
//}

func exibirValoresAritimeticos(valor1: Int, valor2: Int) {
  let soma: Int = valor1 + valor2
  let subtracao: Int = valor1 - valor2
  let multiplicacao: Int = valor1 * valor2
  let divisao: Int = valor1 / valor2
  print("Soma: \(soma), Subtracao: \(subtracao), Multiplicação: \(multiplicacao), Divisão: \(divisao)")
}

//exibirValoresAritimeticos(valor1: 20, valor2: 20)

func meusDadosCompleto(nome: String, idade: Int, peso: Double, altura: Double, cidade: String) -> String {
  return "Meu nome é \(nome) e tenho \(idade) anos, e moro em \(cidade) e atualmente estou medindo: \(altura) e pesando \(peso) kilos"
}

let minhasInformacoes: String = meusDadosCompleto(nome: "Caio", idade: 22, peso: 80, altura: 1.82, cidade: "Guaruja")
//print(minhasInformacoes)

func tenhoDesconto(valor: Double) -> Bool {
  if valor > 1000 {
    return true
  } else {
    return false
  }
}

let tenhoDescontoNoMercado: Bool = tenhoDesconto(valor: 100)
//print(tenhoDescontoNoMercado)


// Estruturas condicionais -> vamos trabalhar com condições
// if -> (Se) utilizado para VALIDAR SE A CONDIÇÃO É VERDADEIRA
// else -> (Se não) utilizado para tratar casos que não sejam verdadeiros
// else if -> utilizado para tratar OUTROS possiveis casos verdadeiros
// guard -> Muito semelhante ao if, porem ele em caso de falso, já retorna o metodo naquele instante
// if let -> É utilizado para garantir que a constante TENHA UM VALOR DENTRO DAQUELE BLOCO!!! (que não seja nil)
// guard let -> É utilizado para garantir que a constante TENHA UM VALOR DENTRO DAQUELE BLOCO!!! (que não seja nil)
// && -> E -> todas as condições devem ser verdadeiras
// || -> OU -> Se UMA DAS CONDIÇÕES forem verdadeiras ele já retorna verdadeiro, caso contrario false


var descontoOpcional: Bool? = nil

//if let desconto = descontoOpcional {
//  print(desconto)
//} else {
//  print("Não existe desconto")
//}

func alunoAprovado(nota1: Int, nota2: Int, nota3: Int, mediaMinima: Int) -> Bool {
  let media: Int = (nota1 + nota2 + nota3) / 3
  let aprovado: Bool = media >= mediaMinima
  return aprovado
}

func comprarCarro(valorGuardado: Double, temHabilitacao: Bool, nota1: Int, nota2: Int, nota3: Int, mediaMinima: Int) {
  let aprovado: Bool = alunoAprovado(nota1: nota1, nota2: nota2, nota3: nota3, mediaMinima: mediaMinima)

  if valorGuardado > 50000 && temHabilitacao && aprovado {
    print("pode comprar o carro")
  } else {
    print("NÃO pode comprar o carro")
  }
}

comprarCarro(valorGuardado: 60000, temHabilitacao: true, nota1: 5, nota2: 5, nota3: 5, mediaMinima: 7)



