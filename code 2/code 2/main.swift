//Program to demonstrate function returning multiple values.
import Foundation

func dosomeThing()->(String , String,Int)
{
 return ("Dhairya" , "suhani", 19)
}

let a = dosomeThing()

print(a.0); print(a.1);print(a.2)

