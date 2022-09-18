import Foundation
struct Temperature {
var celsius: Double

var fahrenheit: Double {
celsius * 1.8 + 32
}

var kelvin:Double {
 celsius + 273.15   
}

}

let currentTemperature = Temperature(celsius: 30.0)
print(currentTemperature.fahrenheit)
print(currentTemperature.celsius)
print(currentTemperature.kelvin)