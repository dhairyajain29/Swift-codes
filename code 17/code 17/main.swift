//Programs to demonstrate Accessing Superclass Methods, Properties, Overriding Methods and Overriding Properties.
import Foundation
class Shop
{
    var shop_name = ""
    var owner_name = ""
    var days_per_week = 0
    var description: String
    {
        return "\nShop: \(shop_name) | Owner: \(owner_name)"
    }
    func open()
    {
        print("\(shop_name) is now open.")
    }
    func close()
    {
        print("\(shop_name) is now closed.")
    }
}
class Restaurant: Shop
{
    var tables = 0
    override var description: String
    {
        return super.description + " | Tables: \(tables)"
        //overriding properties and accessing superclass items
    }
    override func close()
    {
        print("\nDue to lockdown, restro now closes early at 08:00 PM IST.")
        //overriding methods
    }
}
var Restro_1 = Restaurant()
Restro_1.shop_name = "Guru Kripa"
Restro_1.owner_name = "Mr. Dhairya jain"
Restro_1.days_per_week = 7
Restro_1.tables = 4
Restro_1.open()
print("\(Restro_1.description)")
Restro_1.close()
