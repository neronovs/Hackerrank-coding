import Foundation
let s = String(readLine()!)
let n = Int(s.characters.split{$0 == " "}.map(String.init)[0])!
let m = Int(s.characters.split{$0 == " "}.map(String.init)[1])!
var arr:[UInt8]=[]
var max:UInt8 = 0
var grp = 0
for y in 0...n-1{ 
    let bs = strtoul(String(readLine()!), nil, 2)
    arr += [UInt8(bs)]
}
for y in 0...n-1{ 
    for i in y...n-1{
        if arr[y]|arr[i]==max {grp += 1}
        if arr[y]|arr[i]>max {max=arr[y]|arr[i]; grp=1}
    }
}
var count = 0
while (max > 0) {           // until all bits are zero
    if (max & 1) == 1 {count+=1}   // check lower bit 
    max >>= 1              // shift bits, removing lower bit
}
print(count)
print(grp)
