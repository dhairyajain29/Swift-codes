import Foundation

func Add3Num(a: Int, b: Int, c: Int)
{
    var sum = 0
    sum = a + b + c
    print("Answer = \(sum)")
}

func Factorial(x: Int)
{
    var sum = 1
    for i in 1...x
    {
        sum = sum * i
    }
    print("Factorial of \(x) = \(sum)")
}

Add3Num(a: 2, b: 3, c: 10)
Factorial(x: 5)