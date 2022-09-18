//Programs to demonstrate function with and without arugument label.
import Foundation

//Function with Argument label
func greet(name: String) -> String{
    let txt = "Good morning " + name
    return txt
}

//Function without Argument label
func today(_ day: String, _ date: String) -> String{
    let txt_d = "Today is " + day + ", " + date
    return txt_d
}

print(greet(name: "Dhairya"))
print(today("Monday","15 June \n"))

