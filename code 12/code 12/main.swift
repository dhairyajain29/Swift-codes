//Program to demonstrate Structure .
import Foundation

struct Student
{
    var name:String
    var age : Double
    var rollno:Int
    var branch:String

    func sayHello()
    {
        print("Hello there!, My name is \(name) and branch is \(branch)")
    }
}
var s1 = Student(name:"Dhairya",age:19,rollno:101,branch:"CSE")
s1.sayHello()
var s2 = Student(name:"suhani",age:16,rollno:102,branch:"IT")
s2.sayHello()



