//Programs to demonstrate Initializer Inheritance , Overriding and Automatic Initializer Inheritance.

//Initializer Inheritance , Overriding
import Foundation
print("Initializer Inheritance , Overriding \n")
class Employee
{
    var Name = ""
    var ID = 0
    var Salary = 0
    var description: String
    {
        return "\(Name) has ID: \(ID)."
    }
}
let Emp_1 = Employee()
print("Details:-\n\(Emp_1.description)")
class Accounts: Employee
{
    override init()
    {
        super.init()
        Salary = 7000
    }
    override var description: String
    {
        return super.description + " With min salary: \(Salary)."
    }
}
let Emp_2 = Accounts()
Emp_2.Name = "Dhairya"
Emp_2.ID = 2002
print("\nDetails:-\n",(Emp_2.description),"\n")

// Automatic Initializer Inheritance.
print("Automatic Initializer Inheritance. \n")
class Food
{
    var name: String
    init(name: String)
    {
        self.name = name
    }
    convenience init()
    {
        self.init(name: "[Unnamed]")
    }
}
let mysteryMeat = Food()
print(mysteryMeat.name)
let namedMeat = Food(name: "Bacon")
print(namedMeat.name)
class Fruit: Food
{
    var colour: String
    init(name: String, colour: String)
    {
        self.colour = colour
        super.init(name: name)
    }
    override convenience init(name: String)
    {
        self.init(name: name, colour: "Yellow")
    }
    //automatically inherits Food's initializers
}
let Mango = Fruit()
Mango.colour = "Yellow"
print("\(Mango.name) is of \(Mango.colour) colour.")
Mango.name = "Mango"
print("\(Mango.name) is of \(Mango.colour) colour.")
class Alphonso: Fruit
{
    var origin: String = ""
}
let newMango = Alphonso()
newMango.name = "Alphonso"
newMango.origin = "Maharashtra"
print("\(newMango.name) is of \(newMango.colour) colour. Came from \(newMango.origin).")


