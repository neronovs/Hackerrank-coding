import Foundation
let n = Int(readLine()!)!
let ar = String(readLine()!).characters.split{$0 == " "}.map(String.init)
var arr = ar.map { Int($0)!}
let last = arr.removeLast()
for i in (0...n-2).reverse(){
    var temp = arr
    let ins = arr[i]
    if i==0 && last<ins{
        arr.insert(ins, atIndex: i+1)
        let sa = arr.flatMap { String($0) }
        print(sa.joinWithSeparator(" "))
        temp.insert(last, atIndex: 0)
    } else {
        if last>ins {temp.insert(last, atIndex: i+1)} else {temp.insert(ins, atIndex: i+1)}    
    }
    let stringArray = temp.flatMap { String($0) }
    print(stringArray.joinWithSeparator(" "))
    if last>ins {break}
}
