//
//  main.swift
//  POOBootcamp
//
//  Created by Caio Fabrini on 26/06/24.
//

import Foundation

//MARK: - Classe -> Modelo de um OBJETO!
// Atributo / Propriedades = caracteristicas de um objeto
// Ações = função / métodos
// CLASSE TRABALHA COM REFERENCE TYPE!!!

// Como criar uma classe?
// Utilizamos a palavra reservada 'class' e na sequencia seu nome sendo, SEMPRE COM A PRIMEIRA LETRA MAIUSCULA.

class Automovel {

  let cor: String = "Vermelho"
  let quantidadeDeEspelho: Int = 5
  let marca: String = "Ferrari"
  let tipoCombustivel: String = "Alcool"
  let tipoMotor: String = "AP"
  let potencia: Double = 2.0
  let conversivel: Bool = true
  var cavaloDePotencia: Int = 900

  func ligarCarro() {
    print("O carro da marca \(marca) está ligado")
  }

  func acenderFarois() {
    print("As luzes estão ligadas")
  }

  func detalheCompletoAutomovel() -> String {
    let texto: String = "O veiculo da marca: \(marca) tem o motor: \(tipoMotor) que utiliza o combustivel \(tipoCombustivel) e tem um total de \(cavaloDePotencia) cavalos de potencia"
    return texto
  }

}


// Criando objeto!
// Um objeto só ganha VIDA, QUANDO GERAMOS A SUA INSTANCIA QUE É O ABRE E FECHA PARENTESES ()
var ferrari: Automovel = Automovel()

//print(ferrari.cavaloDePotencia)
//print(ferrari.cor)
//print(ferrari.conversivel)
//print(ferrari.detalheCompletoAutomovel())

// Para alterar uma propriedade, você precisa chamar o objeto e atribuir um novo valor a propriedade
ferrari.cavaloDePotencia = 1200
//print(ferrari.cavaloDePotencia)

var uno: Automovel = Automovel()
uno.cavaloDePotencia = 1500
//print(uno.cavaloDePotencia)


//MARK: - Construtores
//MARK: Se caso NÃO TEM VALOR INICIAL, VOCÊ PRECISA PASSAR ELE NO INIT!!!!!!

class Pessoa {
  var nome: String
  var idade: Int
  var peso: Double
  var altura: Double

  // Método Construtor -> Ele é quem seta/informa os valores iniciais!!!
  init(nome: String, idade: Int, peso: Double, altura: Double) {
    self.nome = nome
    self.idade = idade
    self.peso = peso
    self.altura = altura
  }

}

// Neste exemplo, estamos gerando a instancia de uma forma diferente -> a instancia é gerada QUANDO preenchido todas as propriedades
// do metodo construtor
var caio: Pessoa = Pessoa(nome: "Caio", idade: 22, peso: 80, altura: 1.82)
//print(caio.idade)
//print(caio.peso)

var pedro: Pessoa = Pessoa(nome: "Pedro", idade: 45, peso: 92, altura: 1.77)
//print(pedro.idade)
//print(pedro.peso)

//MARK: Se caso NÃO TEM VALOR INICIAL, VOCÊ PRECISA PASSAR ELE NO INIT!!!!!!
class Celular {
  var valorPiCelular: Double = 3.14
  var tamanho: Double = 1.432432
  var cor: String
  var preco: Double
  var modelo: String

  init(modelo: String, preco: Double, cor: String) {
    self.modelo = modelo
    self.preco = preco
    self.cor = cor
  }
}

var iphone: Celular = Celular(modelo: "Iphone 15", preco: 8000, cor: "Preto")

//MARK: Se caso NÃO TEM VALOR INICIAL, VOCÊ PRECISA PASSAR ELE NO INIT!!!!!!
//MARK: O mesmo se encaixa para tipagens opcionais, POIS o opcional EXISTE ALGO DE INICIO -> QUE É O NIL! Com base nisso
//MARK: não é obrigado a passar ele no construtor. Mas caso queira, sem problemas!
class Bolo {

  var peso: Double
  var preco: Double
  var sabor: [String]
  var topoDeBolo: Bool? = nil

  init(peso: Double, preco: Double, sabor: [String]) {
    self.peso = peso
    self.preco = preco
    self.sabor = sabor
  }

  func adicionarSabor(sabor: String) {
    self.sabor.append(sabor)
  }
}

var boloAniversario: Bolo = Bolo(peso: 10, preco: 200, sabor: ["Chocolate", "Baunilha"])
var boloCasamento: Bolo = Bolo(peso: 50, preco: 2000, sabor: ["Chocolate", "Baunilha", "Maça"])

// MARK: - Exercicios Classe

// Exercício 1: Conta Poupança
// Objetivo: Desenvolver uma classe chamada 'ContaPoupanca' para gerenciar os depósitos em uma conta poupança de banco.
//
// Descrição:
// Propriedades:
// - saldo (Double): O saldo atual na conta.
// Construtor:
// - Inicialize o saldo.
// Métodos:
// - depositar(valor: Double): Adiciona(+) o valor especificado ao saldo atual. (saldo = saldo + valor especificado)
// - consultarSaldo() -> Double: Retorna o saldo atual da conta.

//   Para usar este método, você deve criar uma instância da classe, chamar este método e armazenar o valor retornado em uma variável. Em seguida, você pode imprimir esse valor.
// print("Saldo atual: R$\(saldoAtual)")

class ContaPoupanca {
  var saldo: Double

  init(saldo: Double) {
    self.saldo = saldo
  }

  func depositar(valor: Double) {
    saldo = saldo + valor
  }

  func consultarSaldo() -> Double {
    return saldo
  }
}

//var minhaConta: ContaPoupanca = ContaPoupanca(saldo: 1000)
//print(minhaConta.consultarSaldo())
//minhaConta.depositar(valor: 1000)
//print(minhaConta.consultarSaldo())


// Exercício 2: Gerenciador de Filmes
// Objetivo: Desenvolver uma classe chamada 'Filme' para gerenciar informações sobre filmes em um acervo pessoal.
//
// Descrição:
// Propriedades:
// - titulo (String): O título do filme.
// - diretor (String): O diretor do filme.
// - ano (Int): O ano de lançamento do filme.
// Construtor:
// - Inicialize titulo, diretor e ano.
// Métodos:
// - exibirInfo() -> String: Retorna uma string com todas as informações do filme formatadas.

//   Para usar este método, crie uma instância da classe, chame o método e armazene a informação retornada em uma variável. Em seguida, imprima essa variável para visualizar os detalhes do filme.

class Filme {
  var titulo: String
  var diretor: String
  var ano: Int

  init(titulo: String, diretor: String, ano: Int) {
    self.titulo = titulo
    self.diretor = diretor
    self.ano = ano
  }

  func exibirInfo() -> String {
    return "O título é: \(titulo), e o diretor é: \(diretor) e o ano de lançamento foi em \(ano)"
  }
}


var avatar: Filme = Filme(titulo: "Avatar", diretor: "Caio Fabrini", ano: 2022)
//print(avatar.exibirInfo())


// Exercício 3: Sistema de Registro de Alunos
// Objetivo: Criar uma classe chamada 'Aluno' para armazenar dados e calcular a média de notas de alunos em uma escola.
//
// Descrição:
// Propriedades:
// - nome (String): O nome do aluno.
// - notas (Array<Double>): Uma lista de notas do aluno.
// Construtor:
// - Inicialize nome e notas.
// Métodos:
// - calcularMedia() -> Double: Calcula e retorna a média das notas do aluno utilizando um laço de repetição para somar as notas.

//   Para utilizar este método, crie uma instância da classe, invoque o método para calcular a média, armazene esse valor em uma variável e imprima a média para visualizar.
// print("Média das notas de \(aluno.nome): \(media)")

class Aluno {

  var nome: String
  var notas: [Double]

  init(nome: String, notas: [Double]) {
    self.nome = nome
    self.notas = notas
  }

  func calcularMedia() -> Double {
    var soma: Double = 0
    for nota in notas {
      soma = soma + nota
    }
    return soma / Double(notas.count)
  }
}

var alunoCaio: Aluno = Aluno(nome: "Caio", notas: [5,7,8,9])
//print("Média das notas de \(alunoCaio.nome): \(alunoCaio.calcularMedia())")


// MARK: - Herança

// Classe PAI
class Animal {

  var nome: String
  var cor: String
  var peso: Double

  init(nome: String, cor: String, peso: Double) {
    self.nome = nome
    self.cor = cor
    self.peso = peso
  }
}

// Classe Filha(classe na qual HERDA as propriedades e metodos do pai)
// A classe filha ela contem TUDO OQUE O PAI (NO NOSSO EXEMPLO É A CLASSE ANIMAL) CONTEM, E + OQUE ELA JÁ CONTEM!
class Gato: Animal {

  var contemRabo: Bool = true
  var bebeLeite: Bool

  // toda a vez que você utilizar a palavra super, significa que você está chamando algo da classe PAI(no nosso exemplo, o init da classe Animal)
  init(bebeLeite: Bool, nome: String, cor: String, peso: Double) {
    self.bebeLeite = bebeLeite
    super.init(nome: nome, cor: cor, peso: peso)
  }

}

var bartolomeu: Gato = Gato(bebeLeite: true, nome: "Bartolomeu", cor: "Marrom", peso: 5)


// MARK: - Encapsulamento
// O encapsulamento é a prática de manter os detalhes de implementação de um objeto escondidos e seguros de acesso externo. Isso é feito usando modificadores de acesso para restringir o acesso às propriedades e métodos de uma classe.
// De criar variaveis/função get e set
// get -> pegar/acessar/consultar valor
// set -> setar novo valor/substituir o valor atual por um novo
// Tudo que você coloca sendo private -> ele só existe dentro daquele bloco!!

class Computador {
  private var armazenamento: Int
  var processador: String
  var memoriaRam: Int

  init(processador: String, armazenamento: Int, memoriaRam: Int) {
    self.processador = processador
    self.armazenamento = armazenamento
    self.memoriaRam = memoriaRam
  }

  // função set
  func melhoriaArmazenamento(armazenamentoNovo: Int) {
    if validaNovoArmazenamento(novoArmazenamento: armazenamentoNovo) {
      armazenamento = armazenamentoNovo
    }
  }

  // função get
  func getArmazenamento() -> Int {
    return armazenamento
  }

  private func validaNovoArmazenamento(novoArmazenamento: Int) -> Bool {
    let eValido: Bool = armazenamento < novoArmazenamento
    return eValido
  }
}

var meuComputador: Computador = Computador(processador: "m1", armazenamento: 10, memoriaRam: 10)

// Quando declaramos uma função ou variaveis que sejam private, você não consegue chama-las ou atribuir um novo valor fora do bloco de codigo onde ela se mantem.
// meuComputador.armazenamento

// set
meuComputador.melhoriaArmazenamento(armazenamentoNovo: 20)

// get
//print(meuComputador.getArmazenamento())



// MARK: - Polimorfismo
// O polimorfismo permite que objetos de diferentes classes sejam tratados como objetos de uma classe comum. Em outras palavras, polimorfismo permite que um método tenha muitas "formas" diferentes, dependendo do objeto que o chama.
// override -> sobrescrever -> substituir


// O polimorfismo, é nada mais, nada menos que quando se tem uma classe FILHA e você quer utilizar o mesmo nome ou função da classe pai, você precisa colocar o override.
// Segue o exemplo:

class Veiculo {
  var velocidadeMaxima: Int

  init(velocidadeMaxima: Int) {
    self.velocidadeMaxima = velocidadeMaxima
  }

  func detalhesDoVeiculo() -> String {
    return "Veiculos com velocidade máxima de \(velocidadeMaxima) hm/h"
  }
}

class Carro: Veiculo {


  override func detalhesDoVeiculo() -> String {
    return "Carros com velocidade máxima de \(velocidadeMaxima) hm/h"
  }

// Neste exemplo estamos chamando a funcao da classe pai para que a gente possa aprender que com a palavra reservada super, ela chama SEMPRE TUDO OQUE É DA CLASSE PAI
//  override func detalhesDoVeiculo() -> String {
//    let detalhes: String = super.detalhesDoVeiculo()
//    return "\(detalhes) teste agora vai"
//  }
}

//var corolla: Carro = Carro(velocidadeMaxima: 10)
//print(corolla.detalhesDoVeiculo())


// MARK: - Struct
// Com a struct, não é obrigatorio deixar o construtor de forma explicita
// Struct NÃO ACEITA HERENÇA!!!
// Struct aceita apenas PROTOCOLO em sua hierarquia!!
// Struct trabalha com VALUE TYPE!!!

struct Documento {
  var quantidadeDeFolhas: Int
  var tipo: String

  init(quantidadeDeFolhas: Int, tipo: String) {
    self.quantidadeDeFolhas = quantidadeDeFolhas
    self.tipo = tipo
  }
}

var minhaCNH: Documento = Documento(quantidadeDeFolhas: 5, tipo: "muito cara")
var meuRG: Documento = Documento(quantidadeDeFolhas: 2, tipo: "documento importante")

//print("quantidadeDeFolhas CNH: \(minhaCNH.quantidadeDeFolhas)")
//print("quantidadeDeFolhas RH: \(meuRG.quantidadeDeFolhas)")
//
//print("---------------------------------------------------------")

minhaCNH = meuRG

//print("quantidadeDeFolhas CNH: \(minhaCNH.quantidadeDeFolhas)")
//print("quantidadeDeFolhas RH: \(meuRG.quantidadeDeFolhas)")
//
//print("---------------------------------------------------------")

minhaCNH.quantidadeDeFolhas = 50
meuRG.quantidadeDeFolhas = 100

//print("quantidadeDeFolhas CNH: \(minhaCNH.quantidadeDeFolhas)")
//print("quantidadeDeFolhas RH: \(meuRG.quantidadeDeFolhas)")


// struct

//quantidadeDeFolhas CNH: 5
//quantidadeDeFolhas RH: 2
//---------------------------------------------------------
//quantidadeDeFolhas CNH: 2
//quantidadeDeFolhas RH: 2
//---------------------------------------------------------
//quantidadeDeFolhas CNH: 50
//quantidadeDeFolhas RH: 100

// class

//quantidadeDeFolhas CNH: 5
//quantidadeDeFolhas RH: 2
//---------------------------------------------------------
//quantidadeDeFolhas CNH: 2
//quantidadeDeFolhas RH: 2
//---------------------------------------------------------
//quantidadeDeFolhas CNH: 100
//quantidadeDeFolhas RH: 100


// MARK: - Inicializadores / Construtores

class Casa {

  var numeroDeQuartos: Int
  var localizacao: String

  // Designated Initializer
  // Inicializador principal que deve configurar todas as propriedades.
  init(numeroDeQuartos: Int, localizacao: String) {
    self.numeroDeQuartos = numeroDeQuartos
    self.localizacao = localizacao
  }

  // Convenience Initializer
  // Inicializador secundário que fornece valores padrão ou simplifica a criação da instância.
  convenience init() {
    self.init(numeroDeQuartos: 5, localizacao: "guaruja")
  }

  convenience init(numeroDeQuartos: Int) {
    self.init(numeroDeQuartos: numeroDeQuartos, localizacao: "guaruja")
  }

  // Failable Initializer
  // Inicializador que pode falhar e retornar nil se as condições não forem atendidas.
  init?(numeroDeQuartos: Int, localizacao: String, validaQuartos: Bool) {
    if validaQuartos == false || numeroDeQuartos < 2 {
      return nil
    }
    self.numeroDeQuartos = numeroDeQuartos
    self.localizacao = localizacao
  }

  // Required Initializer
  // Exige que todas as subclasses implementem este inicializador.
  required init(localizacao: String) {
    self.localizacao = localizacao
    self.numeroDeQuartos = 10
  }
}

var minhaCasa: Casa = Casa(numeroDeQuartos: 10, localizacao: "nuporanga")
var minhaCasa2: Casa = Casa()
var minhaCasa3: Casa = Casa(numeroDeQuartos: 20)
var minhaCasa4: Casa = Casa(numeroDeQuartos: 0, localizacao: "", validaQuartos: false) ?? Casa()


class CasaDePraia: Casa {

  var distanciaDaPraia: Int

  init(distanciaDaPraia: Int) {
    self.distanciaDaPraia = distanciaDaPraia
    super.init(numeroDeQuartos: 10, localizacao: "sp")
  }
  
  required init(localizacao: String) {
    self.distanciaDaPraia = 1000
    super.init(numeroDeQuartos: 100, localizacao: localizacao)
  }
}

//var minhaCasaDePraia: CasaDePraia = CasaDePraia(distanciaDaPraia: 100)
var minhaCasaDePraia2: CasaDePraia = CasaDePraia(localizacao: "sp")



// MARK: - Defer

// O que é o `defer`?

// O `defer` é uma palavra-chave em Swift usada para criar um bloco de código
// que será executado ao sair do escopo atual. Isso ocorre independente de como
// o escopo termina (retorno normal, erro ou saída antecipada).

// Principais Utilizações do `defer`:
// - Garantir que recursos sejam liberados (como fechar arquivos ou conexões).
// - Centralizar tarefas de limpeza, evitando duplicação de código.
// - Assegurar que ações importantes sejam executadas, independentemente do fluxo do programa.

// Quando Usar?
// - Quando você precisa executar algo no final de um escopo (função, closure ou inicializador).
// - Quando você quer melhorar a organização e garantir que ações importantes não sejam esquecidas.


// MARK: Exemplo 1: Uso em Inicializador

// Este exemplo demonstra o uso do `defer` em um inicializador.
// Vamos garantir que uma ação será executada no final da inicialização,
// mesmo que ocorram múltiplas operações no meio.


class ExemploInicializador {
    init() {
        print("Início do inicializador.")

        // Defer para executar no final do escopo
        defer {
            print("Finalizando o inicializador (defer).")
        }

        print("Executando lógica principal do inicializador.")
    }
}

// Criando uma instância para ver o comportamento
print("Exemplo com Inicializador:")
let _ = ExemploInicializador()
print("\n")

// MARK: Exemplo 2: Uso em Função

// O exemplo abaixo mostra como usar o `defer` em uma função simples.
// Isso é útil para centralizar ações que devem ser feitas ao final da execução da função.
 

func exemploFuncao() {
    print("Início da função.")

    // Defer para garantir execução ao final
    defer {
        print("Isso será executado no final da função (defer).")
    }

    print("Executando lógica principal da função.")

    // Retorno antecipado
    if Bool.random() {
        print("Retornando antecipadamente.")
        return
    }

    print("Finalizando a função normalmente.")
}

// Chamando a função para observar os resultados
print("Exemplo com Função:")
exemploFuncao()
print("\n")

// MARK: Exemplo 3: Garantindo Stop de Loading

// Este exemplo demonstra um caso real em que o `defer` é muito útil:
// Garantir que o loading de uma interface será parado,
// mesmo que a execução termine de formas diferentes (sucesso, erro ou retorno antecipado).


func fetchData() {
    // Simulando início de um loading na interface
    print("Loading iniciado.")

    // Defer para garantir que o loading será encerrado
    defer {
        print("Loading encerrado.") // Sempre executado no final do escopo
    }

    // Simulando uma requisição de API
    let sucesso = Bool.random() // Sucesso ou erro aleatório

    if !sucesso {
        print("Erro ao buscar os dados da API.")
        return // Mesmo com retorno antecipado, o defer será executado
    }

    print("Dados recebidos com sucesso!")
}

// Chamando a função para observar o comportamento
print("Exemplo com Loading:")
fetchData()
print("\n")

// MARK: Conclusão

// O `defer` é uma ferramenta poderosa e versátil em Swift. Ele melhora a organização
// do código e garante que ações importantes sejam executadas ao final de um escopo.
// Use-o em situações onde você precisa:
// 1. Liberar recursos (como fechar arquivos ou conexões).
// 2. Garantir limpeza ou finalização de estados (como parar um loading).
// 3. Centralizar lógica de "finalização" em um único lugar.

// É especialmente útil em funções ou blocos com múltiplos pontos de saída, como retornos antecipados.


// MARK: - O que é o `deinit`?

// O `deinit` (desinicializador) é um método especial em Swift chamado automaticamente
// quando uma instância de uma classe é destruída. Ele é usado para realizar qualquer
// limpeza necessária, como liberar recursos ou remover observadores.

// Principais Características do `deinit`:
// - Apenas classes podem ter desinicializadores (structs e enums não possuem).
// - Não é necessário chamá-lo manualmente, o Swift o executa automaticamente.
// - Útil para tarefas como:
//   - Encerrar conexões com banco de dados ou arquivos.
//   - Remover observadores (`NotificationCenter`, `KVO`).
//   - Liberar recursos como memória ou objetos externos.

// Quando Usar?
// - Sempre que uma classe gerencia recursos que precisam ser explicitamente liberados.
// - Em objetos que têm ciclo de vida limitado e precisam executar algo ao serem destruídos.


// MARK: Exemplo 1: Limpando Recursos com `deinit`

// Neste exemplo, usamos o `deinit` para remover um observador do NotificationCenter,
// garantindo que ele não será chamado após a destruição do objeto.


class Observador {
    init() {
        print("Observador criado.")
        NotificationCenter.default.addObserver(self, selector: #selector(receberNotificacao), name: Notification.Name("MinhaNotificacao"), object: nil)
    }

    deinit {
        print("Observador removido.")
        NotificationCenter.default.removeObserver(self, name: Notification.Name("MinhaNotificacao"), object: nil)
    }

    @objc func receberNotificacao() {
        print("Notificação recebida!")
    }
}

// Criando e destruindo um observador para simular o `deinit`
func exemploObservador() {
    let _ = Observador()
    // Assim que a função terminar, o Observador será destruído, chamando o `deinit`.
}

print("Exemplo com Observador:")
exemploObservador()
NotificationCenter.default.post(name: Notification.Name("MinhaNotificacao"), object: nil)
print("\n")

// MARK: Exemplo 2: Uso com Recurso Externo

// Aqui usamos o `deinit` para simular a liberação de um recurso externo, como um arquivo.


class GerenciadorDeArquivo {
    let nomeDoArquivo: String

    init(nome: String) {
        self.nomeDoArquivo = nome
        print("Abrindo o arquivo: \(nomeDoArquivo)")
    }

    deinit {
        print("Fechando o arquivo: \(nomeDoArquivo)")
    }
}

// Criando e destruindo uma instância para observar o comportamento do `deinit`
func exemploGerenciadorDeArquivo() {
    let _ = GerenciadorDeArquivo(nome: "dados.txt")
    // Assim que a função terminar, o GerenciadorDeArquivo será destruído, chamando o `deinit`.
}

print("Exemplo com Recurso Externo:")
exemploGerenciadorDeArquivo()
print("\n")

// MARK: Exemplo 3: Uso Prático no Ciclo de Vida

// Vamos simular um exemplo prático onde criamos e destruímos uma classe que
// gerencia tarefas temporárias, como carregamento de dados.


class GerenciadorDeTarefas {
    init() {
        print("Iniciando o gerenciador de tarefas.")
    }

    deinit {
        print("Finalizando o gerenciador de tarefas.")
    }

    func executarTarefa() {
        print("Executando uma tarefa.")
    }
}

// Criando e destruindo uma instância temporária
func exemploGerenciadorDeTarefas() {
    let gerenciador = GerenciadorDeTarefas()
    gerenciador.executarTarefa()
    // O `deinit` será chamado automaticamente quando o objeto sair de escopo.
}

print("Exemplo com Gerenciador de Tarefas:")
exemploGerenciadorDeTarefas()
print("\n")

// MARK: Conclusão

// O `deinit` é útil para gerenciar tarefas de limpeza em classes. Use-o em situações onde:
// 1. É necessário remover observadores ou liberar recursos externos.
// 2. O objeto precisa executar alguma lógica final antes de ser destruído.
// 3. O ciclo de vida do objeto está diretamente relacionado ao uso de recursos limitados.

// Observação:
// - O `deinit` não é chamado em estruturas (structs) ou enums, pois eles são gerenciados automaticamente pelo Swift.
// - O `deinit` é chamado apenas quando não há mais referências ao objeto.

// MARK: - Por que Structs não têm `deinit`?
/*
 Structs (ou estruturas) são **tipos por valor** em Swift, enquanto o `deinit` é usado apenas
 em **tipos por referência** (como classes). Vamos entender o motivo:

 1. **O que são tipos por valor?**
    - Quando você cria uma struct, Swift armazena ela diretamente na pilha de memória (*stack*).
    - Ao copiar uma struct, uma nova cópia independente é criada. Isso significa que cada instância
      da struct não compartilha referências com outras.
    - Quando a struct sai de escopo, Swift simplesmente remove os valores da memória. Não é
      necessário gerenciar referências ou liberar recursos.

 2. **O que são tipos por referência?**
    - Classes são armazenadas no *heap* de memória, e várias variáveis podem apontar para
      a mesma instância (referências compartilhadas).
    - Swift usa o ARC (*Automatic Reference Counting*) para rastrear o número de referências.
    - Quando não há mais referências para uma classe, o ARC chama o método `deinit` para
      liberar recursos antes de destruir o objeto.

 3. **Conclusão:**
    - Structs não precisam de `deinit` porque:
      - Elas não têm ciclo de vida complexo.
      - Não gerenciam referências.
      - Sua destruição é automática e direta.

 Vamos ver exemplos comparativos entre classes e structs para entender isso melhor.
 */

// MARK: Exemplo 1: Classe com `deinit`
/*
 Classes possuem ciclo de vida gerenciado pelo ARC, e o `deinit` é chamado automaticamente
 quando não há mais referências para a instância. Isso é útil para liberar recursos.
 */

class MinhaClasse {
    init() {
        print("Instância da classe criada.")
    }

    deinit {
        print("Instância da classe destruída.")
    }
}

func exemploClasse() {
    let objeto = MinhaClasse()
    // Quando a função termina, o `deinit` será chamado automaticamente.
}

print("Exemplo com Classe:")
exemploClasse()
print("\n")

// MARK: Exemplo 2: Struct sem `deinit`

// Structs são tipos por valor. Elas são copiadas e destruídas automaticamente
// quando saem de escopo. Não há necessidade de lógica adicional para "limpar" recursos.


struct MinhaStruct {
    init() {
        print("Instância da struct criada.")
    }
    // Não é possível declarar um `deinit` em structs.
}

func exemploStruct() {
    let objeto = MinhaStruct()
    // Quando a função termina, o objeto é removido automaticamente da memória.
}

print("Exemplo com Struct:")
exemploStruct()
print("\n")

// MARK: Exemplo 3: Diferença no Ciclo de Vida

// Vamos simular a diferença no comportamento entre classes e structs ao copiar
// ou referenciar instâncias.


class ClasseCicloDeVida {
    var valor: Int
    init(valor: Int) {
        self.valor = valor
        print("Classe criada com valor \(valor).")
    }
    deinit {
        print("Classe destruída com valor \(valor).")
    }
}

struct StructCicloDeVida {
    var valor: Int
    init(valor: Int) {
        self.valor = valor
        print("Struct criada com valor \(valor).")
    }
}

func exemploCicloDeVida() {
    print("Criando instâncias de Classe e Struct.")
    let classe1 = ClasseCicloDeVida(valor: 10)
    var struct1 = StructCicloDeVida(valor: 10)

    print("Criando uma cópia.")
    let classe2 = classe1 // Apenas referência compartilhada
    var struct2 = struct1 // Uma cópia independente é criada

    print("Alterando valores.")
    classe2.valor = 20 // Afeta ambas as referências (classe1 e classe2)
    struct2.valor = 20 // Apenas struct2 é alterada; struct1 permanece inalterada

    print("Valor final da classe1: \(classe1.valor)") // 20
    print("Valor final da struct1: \(struct1.valor)") // 10
}

print("Exemplo de Ciclo de Vida:")
exemploCicloDeVida()
print("\n")

// MARK: Conclusão

// Structs são tipos por valor, então:
// - Elas são copiadas ao invés de compartilhadas.
// - Quando saem de escopo, Swift as destrói automaticamente.
// - Elas não têm referências ou ciclos de vida complexos.

// Classes são tipos por referência, então:
// - Elas podem ter várias variáveis apontando para a mesma instância.
// - Swift usa ARC para gerenciar o ciclo de vida.
// - O `deinit` é necessário para liberar recursos e evitar vazamentos de memória.

// Use structs para dados simples e classes para objetos com ciclo de vida mais complexo.












