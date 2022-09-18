//Programs to demonstrate Methods, Instance Methods, self Property and Mutating Method
import Foundation
class returnExpo
{
    var num = 0
    var upto = 0
    func ExpoSeries()
    {
        for expo in 0...upto
        {
            print("\(num)^\(expo+1) = \(num << expo)")
        }
    }
}
var series_2 = returnExpo()
series_2.num = 2
series_2.upto = 7
series_2.ExpoSeries()
struct Point
{
    var x = 0.0, y = 0.0
    func isToTheRightOf(x: Double) -> Bool
    {
        return self.x > x
    }
}
let somePoint = Point(x: 4.0, y: 5.0)
if somePoint.isToTheRightOf(x: 1.0)
{
print("\nThis point is to the right of the line where x == 1.0")
}
struct Steps
{
    var steps: Int
    {
        willSet
        {
            if newValue == goal
            {
                print("\nCongratulations, you did it!")
            }
        }
    }
    var goal: Int
    mutating func takeStep()
    {
        steps += 1
        print("Current steps: \(steps)")
    }
}
var myStep = Steps(steps: 6999, goal: 7000)
myStep.takeStep()
