import Foundation

// Enumerations


struct Animal {
    let type: String
    init(type: String) {
        self.type = type
    }
}


// Enum

enum AnimalStatus {
    case process
    case pending
    case complete
}



let status = AnimalStatus.complete


defineAnimalStatus(status)


func defineAnimalStatus(_ status: AnimalStatus) -> String
{
    var res: String
    
    switch status {
    case .complete: 
        res = "here completed";
        break;
    case .process:
        res = "here processing"
        break;
    case .pending:
        res = "it is pending"
        break;
    }
    
    return res;
}


enum Vehicle {
    case car(path: URL)
    case bike(path: URL)
}

// build a car of parent enum
let bmw = Vehicle.car(
    path: URL(string: "bmw.com")!
)

// build a bike of parent enum
let moutain = Vehicle.bike(
    path: URL(string: "moutain.com")!
)

// check bmw with switch case whether it is which case? car or bike
switch bmw {
case let .car(path):
    "it is car of \(path)"
    break;
case let .bike(path):
    "it is bike of \(path)"
    break;
}


// enum case can have raw value
// enum itself can define as CaseIterable
enum Status: String, CaseIterable {
    case process = "processing"
    case complete = "completed"
}

Status.complete.rawValue
Status.process.rawValue
Status.allCases
Status.allCases.map(\.rawValue)

// enum can have mutating func as well
// acceptor variable data type need to be using var instead of let
