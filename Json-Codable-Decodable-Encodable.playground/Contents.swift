import UIKit

// MARK: Oque é um JSON?

// JSON, que significa JavaScript Object Notation, é um formato leve de intercâmbio de dados. É fácil para os seres humanos lerem e escreverem, e fácil para máquinas analisarem e gerarem. É baseado em um subconjunto da linguagem de programação JavaScript, mas é independente de linguagem, sendo amplamente usado em muitas linguagens de programação, incluindo Swift, para armazenamento e troca de dados.

// Um JSON é construído com dois tipos de estruturas:

// 1 -> Objeto: Um objeto JSON é uma coleção de pares chave/valor, onde a chave deve ser um STRING, e o valor pode ser uma string, número, booleano, uma lista, outro objeto... Objeto JSON são declarados por ABERTURA E FECHAMENTO DE CHAVES { }

// 2 -> Arrays: Um array JSON é uma lista ordenada de valores(string, número, booleano, uma lista, outro objeto...). Arrays são declarados por colchetes [ ]

// OBS: Se caso o back retornar algum valor nulo ele vai vir dessa forma:
// "nome": null
// O null == nil no swift


// Exemplo OBJETO

//{
//  "nome": "Caio Fabrini",
//  "idade": 22,
//  "professor": true,
//  "cursos": ["iOS", "Swift", "SwiftUI"],
//  "endereco": {
//    "cidade": "Nuporanga",
//    "estado": "SP"
//  }
//}

// Modelo do JSON
struct Professor {
  var nome: String
  var idade: Int
  var professor: Bool
  var cursos: [String]
  var endereco: Endereco
}

struct Endereco {
  var cidade: String
  var estado: String
}

//{
//    "pessoa": {
//        "nome": "guilherme",
//        "idade": 17,
//        "sobrenome" : "Braganca"
//      }
//}

struct MinhaSogra {
  var pessoa: Pessoa
}

struct Pessoa {
  var nome: String
  var idade: Int
  var sobrenome: String
}

// Exemplo LISTA

//[
//   {
//    "nome": "Caio",
//    "idade": 22
//   },
//   {
//    "nome": "Matheus",
//    "idade": 25
//   },
//   {
//    "nome": "Lucas",
//    "idade": 32
//   }
//]

struct Aluno {
  var nome: String
  var idade: Int
}

var listaAluno: [Aluno] = [
  Aluno(nome: "Caio", idade: 22),
  Aluno(nome: "Matheus", idade: 25),
  Aluno(nome: "Lucas", idade: 32),
]


// Exercicios


// 1 - Escreva um JSON que represente uma lista com dois objetos do tipo Pessoa, onde o primeiro tem nome “Ana” e idade 28, e o segundo, nome “Ricardo” e idade 35.

// 2 - Crie um JSON que represente um array de objetos, cada um representando um produto com id, nome e preço. Inclua pelo menos três produtos no array. Por fim, crie um modelo swift desse Json, e alem disso tambem crie um objeto com os valores iguais ao do json.

// 3 - Crie um JSON representando o objeto Veiculo fornecido em Swift

struct Veiculo {
    var id: Int
    var marca: String
    var modelo: String
    var ano: Int
    var acessorios: [Acessorio]
}

struct Acessorio {
    var nome: String
    var preco: Double
    var configuracaoAcessorio: ConfiguracaoAcessorio
}

struct ConfiguracaoAcessorio {
    var tipo: String
    var dataCriacao: String
}

// Objeto com valores
let veiculo = Veiculo(
    id: 101,
    marca: "Toyota",
    modelo: "Corolla",
    ano: 2022,
    acessorios: [
        Acessorio(
            nome: "Teto solar",
            preco: 2500.00,
            configuracaoAcessorio: ConfiguracaoAcessorio(
                tipo: "Luxo",
                dataCriacao: "2021-06-15"
            )
        ),
        Acessorio(
            nome: "Multimídia",
            preco: 1200.00,
            configuracaoAcessorio: ConfiguracaoAcessorio(
                tipo: "Tecnologia",
                dataCriacao: "2021-08-20"
            )
        )
    ]
)



// Resolução

// 1 -

//[
//   {
//    "nome": "Ana",
//    "idade": 28
//   },
//   {
//    "nome": "Ricardo",
//    "idade": 35
//   }
//]


// 2 -

//[
//   {
//    "id": 1,
//    "nome": "Caderno",
//    "preco": 15.9
//   },
//   {
//    "id": 2,
//    "nome": "Apontador",
//    "preco": 1.5
//   },
//   {
//    "id": 3,
//    "nome": "Papel",
//    "preco": 1
//   }
//]

struct ProdutoEscolar {
  var id: Int
  var nome: String
  var preco: Double
}

let listaProdutoEscolar: [ProdutoEscolar] = [
  ProdutoEscolar(id: 1, nome: "Caderno", preco: 15.9),
  ProdutoEscolar(id: 2, nome: "Apontador", preco: 1.5),
  ProdutoEscolar(id: 3, nome: "Papel", preco: 1)
]

// 3 -

//{
//    "id": 101,
//    "marca": "Toyota",
//    "modelo": "Corolla",
//    "ano": 2022,
//    "acessorios": [
//        {
//            "nome": "Teto solar",
//            "preco": 2500.00,
//            "configuracaoAcessorio": {
//                "tipo": "Luxo",
//                "dataCriacao": "2021-06-15"
//            }
//        },
//        {
//            "nome": "Multimídia",
//            "preco": 1200.00,
//            "configuracaoAcessorio": {
//                "tipo": "Tecnologia",
//                "dataCriacao": "2021-08-20"
//            }
//        }
//    ]
//}



// MARK: - Decodable

// Decodable é um protocolo em Swift que permite que você converta dados no formato JSON em um objeto Swift. Este processo é conhecido como decodificação.

// OBS: Quando tentar realizar o decode(parse) ele vai olhar sempre buscando a chave e a tipagem se ambos são IGUAIS! Caso não sejam iguais, ele cai no catch.
// Tudo oque tem no MODELO SWIFT que não seja opcional, ele se torna algo OBRIGATORIO!! Caso o back não retorne aquele campo, ele vai cair no catch. Caso a variavel seja opcional, ai não tem problema, pois seu valor será nil


struct House: Decodable {
  var address: String
  var numberOfRooms: Int
  var hasGarden: Bool
}

let jsonString = """
{
  "address": "Avenida 4562 bairro jardim europa",
  "numberOfRooms": 23435,
  "hasGarden": false
}
"""

if let jsonData = jsonString.data(using: .utf8) {
  do {
    let house = try JSONDecoder().decode(House.self, from: jsonData)
    print("Decodificado com sucesso!!")
    print(house.address)
    print(house.numberOfRooms)
    print(house.hasGarden)
  } catch  {
    // Ele tenta (try) decodificar, se caso não conseguir, ele cai no caso do catch
    print("Error ao decodificar o JSON: \(error.localizedDescription)")
  }
}


// MARK: - CodingKey

struct Animal: Decodable {
  var species: String
  var age: Int
  var habitatType: String
  var isDangerous: Bool

  enum CodingKeys: String, CodingKey {
    case species
    case age
    case habitatType = "habitat_type"
    case isDangerous = "is_dangerous"
  }
}

let jsonStringAnimal = """
{
 "species" : "Tigre",
 "age": 1,
 "habitat_type": "Floresta",
 "is_dangerous": true
}
"""

if let jsonData = jsonStringAnimal.data(using: .utf8) {
  do {
    let animal = try JSONDecoder().decode(Animal.self, from: jsonData)
    print("Animal Decodificado com sucesso!!")
    print(animal.species)
    print(animal.age)
    print(animal.habitatType)
    print(animal.isDangerous)
  } catch  {
    // Ele tenta (try) decodificar, se caso não conseguir, ele cai no caso do catch
    print("Error ao decodificar o JSON: \(error.localizedDescription)")
  }
}

// MARK: Encodable

// Encodable é outro protocolo em Swift. Ele permite que você faça o oposto do que o Decodable faz: você pode converter um objeto Swift em dados no formato JSON. Isso é chamado de codificação.

struct Dog: Codable {
  var name: String
  var age: Int
  var breed: String
  var isVaccinated: Bool

  enum CodingKeys: String, CodingKey {
    case name
    case age
    case breed
    case isVaccinated = "is_vaccinated"
  }
}

let myDog = Dog(name: "Ayron", age: 1, breed: "Samoieda", isVaccinated: true)

do {
  let encoder = JSONEncoder()
  encoder.outputFormatting = .prettyPrinted // facilita a leitura
  let jsonData = try encoder.encode(myDog)
  if let jsonString = String(data: jsonData, encoding: .utf8) {
    print(jsonString)
  }
} catch {
  print("Error ao codificar o JSON: \(error.localizedDescription)")
}

// MARK: Codable

// O Codable ele é um Typealias que é a junção do Decodable + Encodable
// No nosso dia a dia recomendamos utilizar apenas ele!!
// Pois ele já é ambos ;)

// MARK: - Desafios

// 1- Faça o Decodable desse json

let jsonStringAuthor = """
{
    "title": "Inception",
    "director": "Christopher Nolan",
    "releaseYear": 2010
}
"""

struct Author: Decodable {
  var title: String
  var director: String
  var releaseYear: Int
}

if let jsonData = jsonStringAuthor.data(using: .utf8) {
  do {
    let author = try JSONDecoder().decode(Author.self, from: jsonData)
    print("Author Decodificado com sucesso!!")
    print(author)
  } catch  {
    // Ele tenta (try) decodificar, se caso não conseguir, ele cai no caso do catch
    print("Error ao decodificar o JSON: \(error.localizedDescription)")
  }
}


// 2 - Faça o Encodable desse modelo

struct Student: Encodable {
    var name: String
    var age: Int
    var grades: [Int]
}

let caio = Student(name: "Caio", age: 22, grades: [10,11,12])

do {
  let encoder = JSONEncoder()
  encoder.outputFormatting = .prettyPrinted // facilita a leitura
  let jsonData = try encoder.encode(caio)
  if let jsonString = String(data: jsonData, encoding: .utf8) {
    print(jsonString)
  }
} catch {
  print("Error ao codificar o JSON: \(error.localizedDescription)")
}

// 3 - Faça o Decode funcionar

// OBS: Você recebeu um JSON de uma API que contém detalhes sobre um veículo. O JSON tem 10 campos, mas você precisa extrair e usar apenas 4 deles: model, make, year, e color. Durante a decodificação, você encontrará alguns erros intencionais que precisam ser corrigidos.

struct Vehicle: Decodable {
    var model: String
    var make: String
    var year: String
    var color: String
}

let jsonStringVehicle = """
{
    "model": "Explorer",
    "make": "Ford",
    "year": "2020",
    "color": "Blue",
    "engine": "3.5L V6",
    "seats": 7,
    "type": "SUV",
    "milage": "12000",
    "price": "35000",
    "airConditioned": true
}
"""

if let jsonVehicle = jsonStringVehicle.data(using: .utf8) {
  do {
    let decoder = JSONDecoder()
    let vehicle = try decoder.decode(Vehicle.self, from: jsonVehicle)
   print(vehicle)
  } catch {
    print("Erro ao decodificar o Vehicle: \(error)")
  }
}

// - Exercício 4

// Realize o decodable do seguinte json

struct MovieData: Codable {
  var movie: [Movie]
}

struct Movie: Codable {
  var title: String?
  var year: String
  var genre: String
}

let jsonStringMovie = """
{
  "movie": [
      {"title": "Harry Potter", "year": "2010", "genre": "Ação"},
      {"title": null, "year": "1999", "genre": "Ficção científica"}
  ]
}
"""

if let jsonData = jsonStringMovie.data(using: .utf8) {
  do {
    let movie = try JSONDecoder().decode(MovieData.self, from: jsonData)
    print("Movie Decodificado com sucesso!!")
    print(movie.movie)
  } catch  {
    // Ele tenta (try) decodificar, se caso não conseguir, ele cai no caso do catch
    print("Error ao decodificar o JSON: \(error.localizedDescription)")
  }
}



// - Exercício 5

// Realize o decodable e o encodable do seguinte json
// OBS: Esse json não parece estar correto...corrija ele

struct Course: Codable {
  var courseName: String
  var instructors: [Instructor]
  var price: String
}

struct Instructor: Codable {
  var firstName: String
  var lastName: String
}


let jsonStringCourse = """
{
  "courseName": "Swift Advanced",
  "instructors": [
    {
      "firstName": "Caio",
      "lastName": "Fabrini"
    },
    {
      "firstName": "Reinaldo",
      "lastName": "Neto"
    }
  ],
  "price": "Free"
}
"""

if let jsonData = jsonStringCourse.data(using: .utf8) {
  do {
    let decoder = JSONDecoder()
    let encoder = JSONEncoder()
    encoder.outputFormatting = .prettyPrinted
    let course = try decoder.decode(Course.self, from: jsonData)
    print("Decode feito com sucesso!")
    let jsonData = try encoder.encode(course)
    print("Encode feito com sucesso!")
    if let jsonString = String(data: jsonData, encoding: .utf8) {
      print(jsonString)
    }
  } catch {
   print("Deu ruimmm")
  }
}

// - Exercício 6
// Realize o decodable e o encodable do seguinte json

struct Person: Codable {
  var id: Int
  var name: String
  var email: String?
  var phone: String?
}

let jsonStringPerson = """
[
    {
        "id": 1,
        "name": "Paula Rodrigues",
        "email": "paula@hotmail.com",
        "phone": "123-456-7890"
    },
    {
        "id": 2,
        "name": "Jane Smith",
        "email": null,
        "phone": "123-456-7890"
    },
    {
        "id": 3,
        "name": "Alice Costa",
        "email": "alice@hotmail.com"
    },
    {
        "id": 4,
        "name": "Pedro Morais",
        "phone": "123-456-7890"
    }
]
"""

if let jsonData = jsonStringPerson.data(using: .utf8) {
  do {
    let decoder = JSONDecoder()
    let encoder = JSONEncoder()
    encoder.outputFormatting = .prettyPrinted
    let person = try decoder.decode([Person].self, from: jsonData)
    print("Decode Person feito com sucesso!")
    let jsonData = try encoder.encode(person)
    print("Encode Person feito com sucesso!")
    if let jsonString = String(data: jsonData, encoding: .utf8) {
      print(jsonString)
    }
  } catch {
   print("Deu ruimmm Person")
  }
}
