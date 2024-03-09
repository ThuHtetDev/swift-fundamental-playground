import Foundation

let hello = "hello"
let world = "world"

// let variable data type cannot assinged again
// let is immutable
//hello = world

// var can assigned new
// var is mutable
var iamArray = ["hello", "world"]

iamArray.append("new hello world")

iamArray
// swift has refrence type and value type
// structure are string value in Swift (which is value types)
// class are which is reference type


// class => we can get from objective c

// above let cannot be mutate right, but by using class, let can mutate
// it is more like a collection of array as i understand

let iAmArrayWithClass = NSMutableArray(array: ["helloworld"])

iAmArrayWithClass.add("new world")

// if we use class mutable but we use that variable, it can keep multabality


