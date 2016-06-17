// Enter your code here 
import Foundation
var n = Int(readLine()!)!
for i in 1...n{ 
    let s = readLine()!
    let r = s.characters.indexOf(" ")
    let first:Int = Int(s.substringToIndex(r!))!
    let second:Int = Int(s.substringFromIndex(r!.advancedBy(1)))!
    let fsq = ceil(sqrt(Double(first)))
    let ssq = floor(sqrt(Double(second)))
    var result = ssq-fsq
    if result<0 {result=0}
    if fsq==ssq {result=1}
    if fsq<ssq {result+=1}
    print(Int(result))    
}
