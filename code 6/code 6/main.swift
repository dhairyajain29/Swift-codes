//Program to demonstrate Single-Expression Closures.
import Foundation

//single expression closure
var list = [15,31,7,23,86]
var assendinglist = list.sorted(by: {x, y in x < y} )
print(assendinglist)

