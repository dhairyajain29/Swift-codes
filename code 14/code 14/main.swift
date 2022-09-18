//PROGRAM TO DEMONSTRATE PROPERTIES, MEMBER WISE AND INITIALIZERS FOR STRUCTURE TYPES.
import Foundation
class StreamsCounter
{
    var totalStreams: Int = 0
    {
        willSet(updatedStreams)
        {
            print("Total streams till now: \(updatedStreams) Million")
        }
        didSet
        {
            if totalStreams > oldValue
            {
            print("\(totalStreams - oldValue) Million new streams today")
            }
        }
    }
}
struct Circle_Area
{
    var radius: Int; let pi = 3.1415; var area: Double
    {
        get
        {
            return pi * Double(radius) * Double(radius)
        }
    }
}
var n = Circle_Area(radius: 125)
    print("""
        Radius = \(n.radius)
        Area = \(n.area)
        """)
n.radius = 67
print("""
    Radius = \(n.radius)
    Area = \(n.area)
    """)
let Heartless_streams = StreamsCounter()
Heartless_streams.totalStreams = 200
Heartless_streams.totalStreams = 360
Heartless_streams.totalStreams = 896
