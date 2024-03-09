import Foundation

let myAge = 25
let yourAge = 26

if myAge > yourAge {
    "KOKO"
} else {
    "MAMA"
}

type(of: myAge)

let content = Optional("Hello World")
let foo = !true // unary prefix
let buu = content! // unary postfix

// concatenation is same as javascript (use + " " + )
let con = "YOO" + " " + "what's up"

// type annotation missing in pattern
var message: String

if myAge > yourAge {
    message = "KOKO"
} else {
    message = "MAMA"
}

// tenary operator
message = myAge > yourAge ? "HOTE P" : "Go GO"
