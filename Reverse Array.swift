import Foundation

var a = [Int]()
var len = 0

a = [1,2,3,4,5]
len = a.count

for i in stride(from: len-1, through: 0, by: -1)
{
    print("\(a[i])")
}