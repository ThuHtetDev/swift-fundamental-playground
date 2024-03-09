import Foundation

//func add(_ lhs: Int, _ rhs: Int) -> Int
//{
//    return lhs + rhs
//}


let add: (Int, Int) -> Int = { 
    (lhs: Int, rhs: Int) -> Int in lhs + rhs
}

add(20,30)


func customAdd(_ lhs: Int, _ rhs: Int,

   using function: (Int, Int) -> Int
) -> Int {
    function(lhs, rhs)
}


customAdd(20, 25, using: {
    (lhs: Int, rhs: Int) -> Int in lhs + rhs
})


customAdd(20,15)
{
    (lhs, rhs) in lhs - rhs
}

// $ is argument
// $0 => 0 is index of arguments
customAdd(20,15)
{
    $0 + $1
}

let ages = [30, 20, 19, 40]
ages.sorted(by: {
    (first: Int, sec: Int) -> Bool in first > sec
})

ages.sorted(by: >)
ages.sorted(by: <)

func add10To(_ value: Int) -> Int
{
    return value + 10
}

func minus10To(_ value: Int) -> Int
{
    return value - 10
}

// closure
// pass func to func
// closure itself is the x place to be called unknown func
func doIt(on value: Int,
         using function: (Int) -> Int
) -> Int
{
    function(value)
}

// using closure
// call closure (in order to pass function)
// doIt func is closure func whic can inject func
doIt(on: 20, using: add10To(_:))
doIt(on: 20, using: minus10To(_:))
