//: Playground - noun: a place where people can play

import UIKit

var str : String? = "Hello, playground"

if let mystr = str {
    print(mystr)
}

//Chaining
print(str!.characters.count)

struct Human {
    let name : String
    //Can have functions
    func sayHello() {
        print("Hello")
    }
}

let human = Human(name: "Mark")
human.name
human.sayHello()

enum Species {
    case Human, Dog, Cat
}

class Mammal : NSObject {
    let name : String
    let legs : Int
    let species : Species
    
    func speak() {
        print("Hello")
    }
    
    init(name : String, legs : Int, species : Species) {
        self.name = name
        self.legs = legs
        self.species = species
    }
}

class Dog : Mammal {
    init(name : String) {
        super.init(name: name, legs: 4, species: .Human)
    }
    
    func shake() {
        print("Shaking")
    }
    
    override func speak() {
        print("Bark")
    }
}

let dog = Dog(name: "Sparky")
dog.legs
dog.species
dog.name
dog.speak()


let mammal : Mammal = Dog(name: "Lassie")
//Can't do this
//mammal.shake()
if let lassie = mammal as? Dog {
    lassie.shake()
}


protocol MammalRunningProtocol {
    func running()
    func walking()
    func jumping()
}


extension Mammal : MammalRunningProtocol {
    func running() {
        print("running")
    }
    
    func walking() {
        print("walking")
    }
    
    func jumping() {
        print("jumping")
    }
}

extension NSObject {
    func myCustomPrintMethod() {
        print("myCustomPrintMethod")
    }
}

mammal.myCustomPrintMethod()





