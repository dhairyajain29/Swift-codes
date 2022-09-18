//Program to demonstrate Trailing Closures.
import Foundation

func someSimpleFunction(msg:String ,someClosure:()->()) {

    print(msg)
    someClosure()

}

someSimpleFunction(msg:"Function is called ") {
    print("Hello Dhairya! from closure\n")
}


