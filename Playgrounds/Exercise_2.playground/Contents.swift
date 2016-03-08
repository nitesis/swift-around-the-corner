// Playground - noun: a place where people can play

import UIKit


/*:

# Übung 2
## a.

Gegeben sei das Protokoll `Person`. Implementiere 2 Klassen `ComputerScientist` und `Banker`, die die folgenden Kriterien erfüllen:

- Sie muessen das Protokoll Person implementieren (d.h. auch die Properties und Methoden, die in Person deklariert sind).
- Sie muessen das Protokoll CustomStringConvertible implementieren

Anschliessend folgendes noch machen:
- Erzeuge ein Array von Personen (mit je 2 Informatiker und 2 Banker).
- Generiere ein Array, mit den 4 Zeichenketten, die von den 4 Personen gesagt werden
- Generiere ein Array, mit den 4 Zeichenketten, welche bezeichnen, was die 4 Personen essen
*/

protocol Person {
    var name: String { get }
    func say() -> String
    func eat() -> String
}

// TODO: Klassen ComputerScientist und Banker implementieren

class ComputerScientist: Person, CustomStringConvertible {
    var name: String
    /// A textual representation of `self`.
    var description: String {
        return "ComputerScientist{name: \(name)"
    }
    init(name: String) {
        self.name = name
    }
    func say() -> String {
        return "Sorry, I didn't listen to you..."
    }
    func eat() -> String {
        return "cake"
    }
}

class Banker: Person, CustomStringConvertible {
    var name: String
    /// A textual representation of `self`.
    var description: String {
        return "Banker{name: \(name)"
    }
    init(name: String) {
        self.name = name
    }
    func say() -> String {
        return "I am the best"
    }
    func eat() -> String {
        return "tofu"
    }
}

var persons: [Person] = []
persons.append(Banker(name: "brady"))
persons.append(Banker(name: "tidjane"))
persons.append(ComputerScientist(name: "steve"))
persons.append(ComputerScientist(name: "niklaus"))

let names = persons.map { person in person.name }
let sayings = persons.map { person in person.say() }
let eatings = persons.map { person in person.eat() }

persons
names
sayings
eatings


/*:
## b.

Erweitere Array und schreibe eine Methode `sum`, die die Summe aller Elemente im Array zurückgibt.

*/


//sum macht nur Sinn für den Typ integer
extension Array where Element: IntegerType {
    
    func sum() -> Element {
        //reduce(0) ist wie ein Startpunkt bei 0, es werden die folgenden dazuaddiert
        return self.reduce(0) {
            (result, item) in result + item
        }
    }
    
    
}
let array = [1,2,3,4]
array.sum()
//array.sumWithFor()

