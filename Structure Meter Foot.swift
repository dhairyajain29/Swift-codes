import Foundation

struct Length {

    var meter: Double
    var foot: Double {
        meter * 3.281
    }
}
let l = Length(meter: 5.0)
print("\(l.meter) Meter = \(l.foot) Foot")