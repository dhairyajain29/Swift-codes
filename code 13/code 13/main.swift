// PROGRAM TO DEMONSTRATE PROPERTIES, MEMBER WISE AND INITIALIZERS FOR STRUCTURE TYPES.
struct Height
{
    var heightInInches: Double
    var heightInCentimeters: Double
    init(heightInInches: Double)
    {
    self.heightInInches = heightInInches

    self.heightInCentimeters = heightInInches * 2.54
    }
    init(heightInCentimeters: Double)
    {
        self.heightInCentimeters = heightInCentimeters; self.heightInInches = heightInCentimeters / 2.54
    }
}
var someonesHeight = Height(heightInInches: 65)
print("In centimeters = ",someonesHeight.heightInCentimeters)
var myHeight = Height(heightInCentimeters: 178)
print("In inches = ",myHeight.heightInInches)
