import Foundation

struct Person {
    let name: String
    let age: Int
}

let person = Person(name: "thu",age: 23)

// can call with dot notation
person.name
person.age

// my understanding is struct is like a class

struct Computer {
    let name: String
    let manufacture: String
    let developer: String
    let isActive: String = "YES"
    
    // can build constructor in swift struct
    init(name: String, manufacture: String) {
        self.name = name
        self.manufacture = manufacture
        self.developer = "God" // no pass this property, default
    }
}


let mac = Computer(
    name: "Mac 2 pro",
    manufacture: "Apple"
)

mac.name
mac.manufacture


let old = Computer(
    name: "unknown",
    manufacture: "old"
)

old.name
old.manufacture
old.developer
old.isActive


struct Animal {
    let name: String
    var nickname: String {
        "\(name) lay"
    }
    var homeName: String {
        "\(nickname) lay yayy"
    }
    var food: String
    mutating func eat(exactFood: String) -> String {
        "FOOD..."
        food = exactFood
        
        return food
    }

}


var cat = Animal(name: "Kiddy", food: "cat food")

cat.name
cat.nickname
cat.homeName
cat.eat(exactFood: "cat cat food")

// structures are value type
// let immutable -> var mutable

struct LivingThing {
    init() {
        "i am living thing"
    }
}

// structure cannot inherit

struct Bike {
    let currentSpeed: Int
    func copy(currentSpeed: Int) -> Bike
    {
        return Bike(currentSpeed: currentSpeed)
    }
}

let bmw = Bike(currentSpeed: 20)
let mcd = Bike(currentSpeed: 30)

bmw.currentSpeed
mcd.currentSpeed

let cloneBMWChina = bmw.copy(currentSpeed: 1000)
cloneBMWChina.currentSpeed
bmw.currentSpeed

// struct c
