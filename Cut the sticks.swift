// Enter your code here 
let n = Int(readLine()!)!
let s = String(readLine()!)
var arr = s.characters.split{$0 == " "}.map(String.init)
while !arr.isEmpty {
    print(arr.count)
    var min = Int(arr[0])!
    for curr in arr { if min > Int(curr)! {min=Int(curr)!} }
    for i in 0..<arr.count { arr[i] = String(Int(arr[i])!-min) }
    for curr in arr {
        if Int(curr)! == 0 { arr.removeAtIndex(arr.indexOf(curr)!)} 
    }
}
