//Programs to demonstrate different types of Inheritance in Swift.
class YT_Channel
{
//base class
    var ch_name = ""
    var subscribers = 0
    var views = 0
}
class YT_Ch_India: YT_Channel
{
    //derived class
    let CPM_India = 5
    var currentSubs: String
    {
        return "Current sub count for \(ch_name) is \(subscribers) Million."
    }
    var earnings: String
    {
        return "With current CPM, earnings for this month: \(CPM_India * (views/1000)) $."
    }
}
var MrBeast = YT_Ch_India()
MrBeast.ch_name = "MrBeast"
MrBeast.subscribers = 23
MrBeast.views = 12000000
print(MrBeast.currentSubs)
print(MrBeast.earnings)
