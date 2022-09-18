////func without retrurn & parameter

func introduction(name: String, home: String, age: Int)
{
    print("Hi this is \(name). I'm \(age) and from \(home).")
}
introduction(name: "Dhairya", home: "indore", age: 19)



//func with return & parameter

func addTwoInts(_ a: Int,_ b: Int) -> Int
{
     return a+b
}
print("\nAnswer = \(addTwoInts(20, 10))")

