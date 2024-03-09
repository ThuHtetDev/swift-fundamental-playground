import Foundation

func noArgumentsAndNoReturnValue() {
    print("I don't know what I am doing")
}

noArgumentsAndNoReturnValue()


func getName(value: String) -> String
{
    return value + " is the name"
}

print(getName(value: "HELLO"))


// need to add return type as -> String or -> Int as your needs
func greeting(word: String) -> String
{
    return word
}


let greet = greeting(word: "Mingalarbar")


// can add extrnal argument to avoid the prefix call in func
// _ add front of your declar datatype of func
func customeMinus( _ lhs: Int, _ rhs: Int) -> Int
{
    return  lhs - rhs
}

print(customeMinus(20,10))


func myCustomAdd (_ lhs: Int, _ rhs: Int) -> Int {
   return lhs + rhs
}



struct Person {
    
    @discardableResult
    func getAge() -> Int
    {
        return 23
    }
    
    func doSomething()
    {
        let age = getAge()
    }
}


// external argument internal argument
// function can build child function in them but another new function cannot call that function's child function


func getFullName(_ firstName: String = "foo") -> String
{
    //firstName
    return "\(firstName)"
    // if you want to add variable in string like ES6 template in JS, use backslap and bracket \()
    
}


getFullName("Thu HTet Tun")

getFullName()
