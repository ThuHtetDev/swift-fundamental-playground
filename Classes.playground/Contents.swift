import Foundation


struct Person {
    var name: String
    var age: Int
}

class Animal {
    private (set) var name: String
    var age: Int
    
    init(_ name: String, _ age: Int) {
        self.name = name
        self.age = age
    }
    
    func increateAge() -> Int {
        self.age += 1
        
        return self.age
    }
}


let cat = Animal("kiddy", 11)

cat.name
cat.age
cat.increateAge()


// how to add designated initializer

class Tesla {
    let model: String
    let year: String
    
    // designated init
    // cannot call self init  func
    init()
    {
        self.model = "Default Tesla"
        self.year = "2020"
    }
    
    // self init
    init(model: String, year: String)
    {
        self.model = model
        self.year = year
    }
    
    // convenience init
    // can call  self init
    convenience init ( model: String)
    {
        self.init(model: model, year: "2021")
    }
}

let defaultCar  = Tesla()
defaultCar.model
defaultCar.year

let m3  = Tesla(model: "m3", year: "2024")
m3.model
m3.year


// super class usage
// it is sub class
// my understanding is like a extand the class
class TeslaModelY: Tesla {
    
    // this is desingate init
    // so cannnot call the convenience init
    // sub class can only call (Must call a designated initializer of the superclass 'Tesla')
    override init() {
        super.init(model: "Y", year: "2024")
    }
}

let mY = TeslaModelY()
mY.model
mY.year


// NOTE!!
// CLASSES ARE REFERANCE TYPE
// struct are value type



// De-init
// reactive programming

class MyClass {
    init() {
        "initialized"
    }
    
    func doSomething() {
        
    }
    
    deinit {
        "Deinitialized"
    }
}

let myClosure = {
    let one = MyClass()
    one.doSomething()
}



myClosure()
