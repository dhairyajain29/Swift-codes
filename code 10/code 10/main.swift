////Program to demonstrate Enumeration with Switch case.
//
//import Foundation
//enum CompassPoint
//{
//    case north, east, south, west
//}
//let compassHeading: CompassPoint = .west
//switch compassHeading
//{
//    case .north:
//        print("Dhairya is heading north\n")
//    case .east:
//        print("Dhairya is heading east.\n")
//    case .south:
//        print("Dhairya is heading south\n")
//    case .west:
//        print("Dhairya is heading west\n")
//}
//
//
let simpleClosure:(String) -> (String) = { name in
    
    let greeting = "Hello, World! " + "Program"
    return greeting
}

let result = simpleClosure("Hello, World")
print(result)
