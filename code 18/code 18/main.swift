//Programs to demonstrate Initializers, Default Property Values and Custom Initializers.
import Foundation
struct Inventory
{
    var item_name = "Not added"
    var item_stock = 00
    //default property values
}
var Example_Inv = Inventory()
print("Default values- Name: \(Example_Inv.item_name) | Stock:\(Example_Inv.item_stock)\n")
struct Fahrenheit
{
    var temperature: Double
    init()
    {
        temperature = 32.0
        //initializer
    }
}
var f = Fahrenheit()
print("The default temperature is \(f.temperature)  Fahrenheit.\n")
struct Height
{
    var heightInInches: Double
    {
        didSet
        {
            if (heightInCentimeters != heightInInches * 2.54)
            {
                heightInCentimeters = heightInInches * 2.54
            }
        }
    }
    var heightInCentimeters: Double
    {
        didSet
        {
            if (heightInInches != heightInCentimeters / 2.54)
            {
                heightInInches = heightInCentimeters / 2.54
            }
        }
    }
    init(heightInInches: Double)
    {
        self.heightInInches = heightInInches
        self.heightInCentimeters = heightInInches*2.54
        //a custom initializer
    }
    init(heightInCentimeters: Double)
    {
        self.heightInCentimeters = heightInCentimeters
        self.heightInInches = heightInCentimeters/2.54
        //a custom initializer
    }
}
var Height1 = Height(heightInCentimeters: 132)
print("height in inches =",Height1.heightInInches)
Height1.heightInCentimeters = 168
print("height in inches =",Height1.heightInInches)

