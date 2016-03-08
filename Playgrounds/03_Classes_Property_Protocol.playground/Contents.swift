// Playground - noun: a place where people can play


//: # Classes, Property, Protocol
//: ## Protokoll- und Klassendefinition

protocol Animal {
    var name: String { get set }
    func move() -> String
    func makeSound() -> String
}

class Dog: Animal {
    var name: String
    // constructor
    init(name: String) {
        // self analog to this in Java
        self.name = name
    }
    // implementation of two methods
    func move() -> String {
        return "walk"
    }
    func makeSound() -> String {
        return "bark"
    }
}

class Bird: Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func move() -> String {
        return "fly"
    }
    func makeSound() -> String {
        return "whistle"
    }
}
// Pibull is subclass of Dog
class Pitbull: Dog {
    
    override func makeSound() -> String {
        return "woof"
    }
    
}
// array from type animal
let animals: [Animal] = [Bird(name: "Wisti"), Dog(name: "Max"), Pitbull(name: "Jake")]

let sounds = animals.map { a in a.makeSound() }
let moves  = animals.map { a in a.move() }

sounds
moves
//property Zugriff ohne Klammer, Methoden mit Klammer
animals[0].name


//: ## Statische Methoden

class Chiwawa {
    class func stayInHandbag() -> String {
        return "OMG! I like that!"
    }
}

Chiwawa.stayInHandbag()


//: ## willSet/didSet

class Bulldog: Dog {
    var isHappy: Bool = true
    override var name: String {
        willSet{
            isHappy = false
        }
    }
}

let b = Bulldog(name: "Toby")
b.isHappy
b.name = "Rusty"
b.isHappy

//: ## Berechnete Properties

// afghanischer Windhund
class AfghanHound: Dog {
    var age: Double
    var dogAge: Double {
        get {
            return age * 7
        }
    }
    
    init(name: String, age: Double) {
        self.age = age
        super.init(name: name)
    }
    
}

let dog = AfghanHound(name: "Lumpi", age: 5)
dog.dogAge

// Sichtbarkeit

class Foobar {
    func someInternalMethod() {
        print("internal")
        somePrivateMethod()
    }
    
    private func somePrivateMethod(){
        print("private")
    }
}
//: [Zur nächsten Seite](@next)

