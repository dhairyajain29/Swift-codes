////Programs to demonstrate Failable Initializers, Failable Initializers for Enumerations and Overriding a Failable Initializer.
//import Foundation
//
////failable initializer
//let wholeNumber: Double = 12345.0
//if let valueMaintained = Int(exactly: wholeNumber)
//{
//    print("\(wholeNumber) conversion to Int maintains value of \(valueMaintained)\n")
//}
//
////Failable Initializers for Enumerations
//enum TemperatureUnit
//{
//    case kelvin, celsius, fahrenheit
//    init?(symbol: Character)
//    {
//        switch symbol
//        {
//            case "K":
//            self = .kelvin
//        case "C":
//            self = .celsius
//        case "F":
//            self = .fahrenheit
//        default:
//            return nil
//        }
//    }
//}
//let fahrenheitUnit = TemperatureUnit(symbol: "F")
//if fahrenheitUnit != nil
//{
//    print("This is a defined temperature unit, so initialization succeeded.")
//}
//// Prints "This is a defined temperature unit, so initialization succeeded."
//let unknownUnit = TemperatureUnit(symbol: "X")
//if unknownUnit == nil
//{
//    print("This isn't a defined temperature unit, so initialization failed.\n")
//}

//You can override Failable Initializer by Non-Failable in sub-class.
import Foundation
class Account: CustomStringConvertible
{
    let name: String
    let pass: String

    init()
    {
        name = "Garima"; pass = "Jain"
    }

    init?(name:String, pass:String)
    {
        self.name = name
        self.pass = pass
        if name.isEmpty || pass.isEmpty
        {
            return nil
        }
    }

    var description: String
    {
        return "name:\(name) pass:\(pass)"
    }
}
class Guest: Account
{
    override init(name: String, pass: String)
    {
        if name.isEmpty || pass.isEmpty
        {
            super.init()
        } else
        {
            // Can't fail certainly, unwrap implicity.
            super.init(name: name, pass: pass)!
        }
    }
}
// Failable Initializer
let account = Account(name: "", pass: "")
print(account?.description) // nil
// Non-Failable Initializer
let guest = Guest(name: "Dhairya", pass: "Jain")
print(guest.description)
