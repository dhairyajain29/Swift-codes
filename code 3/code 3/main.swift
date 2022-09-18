//Program to demonstrate function returning optional tuple.
import Foundation

let a = 0
func returnMultipleValues() -> (name: String, count: Int)?
{
    if a==0 {
    return ("hey i am Dhairya. Age", 19)
    }
    else{
        return nil
    }
}

let result = returnMultipleValues()!
print("\(result.name), \(result.count) ")
//
//func minMax(array: [Int]) -> (min: Int, max: Int)? {
//    if array.isEmpty { return nil }
//    var currentMin = array[0]
//    var currentMax = array[0]
//    for value in array[1..<array.count] {
//        if value < currentMin {
//            currentMin = value
//        } else if value > currentMax {
//            currentMax = value
//        }
//    }
//    return (currentMin, currentMax)
//}
//if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]) {
//    print("min is \(bounds.min) and max is \(bounds.max)")
//}
