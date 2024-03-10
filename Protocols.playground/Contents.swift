import Foundation

// AH Ha, my understanding is protocol look like an interface

// It is like an interface
// it can only have the func wihout any implementation
// contracting


protocol CanBreath {
    func breathe() -> String
}


struct Animal: CanBreath {
    func breathe() -> String {
        return "animal breathing"
    }
}

struct Person: CanBreath {
    func breathe() -> String {
        return "person breathing"
    }
}

let cat = Animal()
cat.breathe()

let mgmg = Person()
mgmg.breathe()


protocol CanJump {
    func jump()
}

// protocol can have variables
protocol HasName {
    var name: String { get }
    var age: Int { get set }
}

// NOTE!!!
// Struc don't allow inheritance (it is value type)
// Class allow inheritance /sub/super clas (reference type)

// In this case, struct need interface


// protocal's func and variable cannot have body
// but using extension, func can have body

protocol Vehicle {
    var speed: Int { get set }
    mutating func increaseSpeed(by value: Int)
}

extension Vehicle {
    
    mutating func increaseSpeed(by value: Int) {
        self.speed += value
    }
}

struct Bike: Vehicle {
    var speed: Int
    
    init() {
        self.speed = 0
    }
}


var bike = Bike()
bike.speed
bike.increaseSpeed(by: 10)


// "is" is like instanceOf
// if obj is Vehicle (checking obj is instanceOf Protocol)

// "is" is for just checking
// checking and assing at once => you can use "as?"





