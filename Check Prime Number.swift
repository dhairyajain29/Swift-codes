import Foundation

var num = 12
var prime = true

func CheckPrime(num: Int)
{
    for i in 2...num-1
    {
        if (num % i == 0)
        {
            prime = false
        }
    }

    if (prime == false)
    {
        print("\(num) is non prime")
    }
    else
    {
        print("\(num) is prime number")
    }
}

CheckPrime(num: 11)
