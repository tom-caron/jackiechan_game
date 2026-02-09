### Hello World
print("Bonjour le monde !")

var variableName = "Peut changer" // Mutable
let constantName = "Ne change pas" // Immuable
// Annotation de type
var age: Int = 25
let name: String = "Jean"
var price: Double = 19.99
var isLoggedIn: Bool = true

// Nombres
let int: Int = 42
let float: Float = 3.14
let double: Double = 3.14159
// Chaînes
let str: String = "Swift"
let multiLine = """
 Ligne 1
 Ligne 2
"""

// Collections
let array: [Int] = [1, 2, 3]
let dictionary: [String: Int] = ["un": 1, "deux": 2]
let set: Set<String> = ["A", "B", "C"]
// Optionnel
var optionalValue: Int? = nil
// Arithmétiques
let sum = 5 + 3
let diff = 10 - 4
let product = 6 * 7
let quotient = 12 / 4
let remainder = 13 % 5
// Comparaison
let isEqual = 5 == 5 // true
let notEqual = 5 != 3 // true
let greater = 10 > 5 // true
let less = 3 < 7 // true
// Logiques
let and = true && false // false
let or = true || false // true
let not = !true // false

// Nil-coalescent
let value = optionalValue ?? 0 // Use 0 if nil
// Intervalles
1...5 // Intervalle fermé (1,2,3,4,5)
1..<5 // Intervalle semi-ouvert (1,2,3,4)


let score = 85
if score >= 90 {
 print("A")
} else if score >= 80 {
 print("B")
} else {
 print("C")
}


let grade = "B"
switch grade {
case "A":
 print("Excellent")
case "B", "C":
 print("Bon")
default:
 print("À améliorer")
}
// Correspondance par intervalle
switch score {
case 90...100: print("A")
case 80..<90: print("B")
default: print("C")
}


// For-in
for i in 1...5 {
 print(i)
}
for item in ["a", "b", "c"] {
 print(item)
}
for (key, value) in ["a": 1, "b": 2] {
 print("\(key): \(value)")
}
// While
var counter = 0
while counter < 5 {
 counter += 1
}
// Repeat-while
repeat {
 counter -= 1
} while counter > 0

var optionalInt: Int? = 5
// Déballage forcé (dangereux)
let value1 = optionalInt! // Crash si nil
// Déballage conditionnel (sûr)
if let safeValue = optionalInt {
 print(safeValue)
}
// Guard
guard let safeValue = optionalInt else {
 // Gérer le cas nil
 return
}
print(safeValue)
// Chaînage optionnel
struct Person {
 var address: Address?
}
struct Address {
 var street: String?
}
let person: Person? = Person()


// Fonction basique
func greet(name: String) -> String {
 return "Bonjour, \(name) !"
}
// Multiple paramètres
func add(_ a: Int, to b: Int) -> Int {
 return a + b
}
// Étiquettes de paramètres
func calculateArea(width w: Double, height h: Double) -> Double {
 return w * h
}
// Paramètres par défaut
func greet(name: String = "Invité") -> String {
 return "Bonjour, \(nom) !"
}
// Retour multiple
func minMax(array: [Int]) -> (min: Int, max: Int) {
 return (array.min() ?? 0, array.max() ?? 0)
}

// Paramètres variadiques
func average(_ numbers: Double...) -> Double {
 let total = numbers.reduce(0, +)
 return total / Double(numbers.count)
}
// Paramètres in-out
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
 let temp = a
 a = b
 b = temp
}

// Expression de clôture
let multiply: (Int, Int) -> Int = { (a, b) in
 return a * b
}
// Raccourci
let add: (Int, Int) -> Int = { $0 + $1 }
// Clôture terminale
let numbers = [1, 2, 3]
let doubled = numbers.map { $0 * 2 }

// Capture de valeurs
func makeIncrementer(incrementAmount: Int) -> () -> Int {
 var total = 0
 let incrementer: () -> Int = {
 total += incrementAmount
 return total
 }
 return incrementer
}

var fruits = ["Pomme", "Banane"]
// Accès
let first = fruits[0]
// Modification
fruits.append("Orange")
fruits.insert("Mangue", at: 1)
fruits.remove(at: 0)
// Itération
for fruit in fruits {
 print(fruit)
}

// Méthodes courantes
fruits.count // Nombre d'éléments
fruits.isEmpty // Vérifier si vide
fruits.contains("Pomme")
fruits.sorted()
fruits.reversed()

var scores = ["Alice": 95, "Bob": 87]
// Accès (retourne optionnel)
let aliceScore = scores["Alice"]
// Modification
scores["Charlie"] = 91
scores["Alice"] = 100
scores.removeValue(forKey: "Bob")
// Itération
for (name, score) in scores {
 print("\(name): \(score)")
}

var colors: Set<String> = ["Red", "Green", "Blue"]
// Opérations
colors.insert("Yellow")
colors.remove("Red")
colors.contains("Green")
// Opérations ensemblistes
let set1: Set = [1, 2, 3]
let set2: Set = [3, 4, 5]
set1.union(set2) // [1, 2, 3, 4, 5]
set1.intersection(set2) // [3]
set1.subtracting(set2) // [1, 2]

class Person {
 // Propriétés
 var name: String
 var age: Int

 // Initialiseur
 init(name: String, age: Int) {
 self.name = name
 self.age = age
 }

 // Méthode
 func introduce() -> String {
 return "Bonjour, je suis \(name) et j'ai \(age) ans."
 }

 // Propriété calculée
 var isAdult: Bool {
 return age >= 18
 }

 // Observateurs de propriétés
 var score: Int = 0 {
 willSet {
 print("Sur le point de définir le score à \(newValue)")
 }

 didSet {
 print("Score changé de \(oldValue) à \(score)")
 }
 }
}
// Héritage
class Student: Person {
 var studentID: String

 init(name: String, age: Int, studentID: String) {
 self.studentID = studentID
 super.init(name: name, age: age)
 }

 override func introduce() -> String {
 return super.introduce() + " Mon numéro étudiant est \(studentID)."
 }
}

struct Point {
 var x: Double
 var y: Double

 // Méthode mutante
 mutating func moveBy(x deltaX: Double, y deltaY: Double) {
 x += deltaX
 y += deltaY
 }
}

enum CompassDirection {
 case north, south, east, west
}
// Valeurs associées
enum Measurement {
 case distance(Double)
 case temperature(celsius: Double)
}
// Valeurs brutes
enum Planet: Int {
 case mercury = 1, venus, earth, mars
}

protocol Drawable {
 var area: Double { get }
 func draw()
}
class Circle: Drawable {
 var radius: Double

 var area: Double {
 return .pi * radius * radius
 }

 func draw() {
 print("Dessin d'un cercle")
 }
}

enum NetworkError: Error {
 case badURL
 case timeout
 case serverError(code: Int)
}
func fetchData() throws -> String {
 throw NetworkError.timeout
}

// Do-Catch
do {
 let data = try fetchData()
} catch NetworkError.badURL {
 print("Mauvaise URL")
} catch NetworkError.timeout {
 print("Délai dépassé")
} catch {
 print("Autre erreur: \(error)")
}
// Try?
if let result = try? fetchData() {
 print(result)
}
// Try!
let result = try! safeFunction() // Seulement si sûr qu'elle ne lance pas d'erreur

// Référence faible (évite les cycles de rétention)
class Person {
 weak var apartment: Apartment?
}
// Référence non possédée
class Customer {
 unowned let creditCard: CreditCard
}
// Liste de capture dans les clôtures
class HTMLElement {
 lazy var asHTML: () -> String = { [unowned self] in
 return "<\(self.name)>"
 }
}

extension String {
 var isPalindrome: Bool {
 let reversed = String(self.reversed())
 return self == reversed
 }
}

### Génériques
func swapValues<T>(_ a: inout T, _ b: inout T) {
 let temp = a
 a = b
 b = temp
}
struct Stack<Element> {
 private var items: [Element] = []

 mutating func push(_ item: Element) {
 items.append(item)
 }

 mutating func pop() -> Element? {
 return items.popLast()
 }
}

### Enveloppeurs de Propriétés
@propertyWrapper
struct Capitalized {
 private var value: String = ""

 var wrappedValue: String {
 get { value }
 set { value = newValue.capitalized }
 }

 init(wrappedValue: String) {
 self.wrappedValue = wrappedValue
 }
}
struct User {
 @Capitalized var name: String
}