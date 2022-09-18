//Program to demonstrate Shorthand Argument Names.
import Foundation

//Shorthand Argument Names
var groceries = ["milk", "eggs", "butter", "flowers"]

var uppercasedGroceries = groceries.map
{
    $0.uppercased()
}
print(uppercasedGroceries)

