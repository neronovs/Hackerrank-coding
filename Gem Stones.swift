import Foundation
let n = Int(readLine()!)!
var arr:[String] = []
var chk:[String] = []
for _ in 1...n{ arr += [String(readLine()!)] }
for char in arr[0].characters{
    if !chk.contains(String(char)) { chk += [String(char)] }
}
for str in arr{
    for char in chk{
        if str.rangeOfString(char)==nil {
            let index:Int? = chk.indexOf(String(char))
            chk.removeAtIndex(index!)
        }
    }     
}    
print(chk.count)
