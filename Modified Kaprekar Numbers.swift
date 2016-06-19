import Foundation
let kapr:[Int] = [1, 9, 45, 55, 99, 297, 703, 999, 2223, 2728, 4950, 5050, 7272, 7777, 9999, 17344, 22222, 77778, 82656, 95121, 99999]
let first = Int(readLine()!)!
let last = Int(readLine()!)!
var result:[String]=[]
for kn in kapr{
    if first...last ~= kn { result += [String(kn)] }
}
if result.count == 0 {print("INVALID RANGE")} else { print(result.joinWithSeparator(" ")) }
