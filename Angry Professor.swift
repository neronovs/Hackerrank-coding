// Enter your code here 
var t = Int(readLine()!)! 
for i in 1...t {
    var count:Int = 0
    let first = readLine()!.characters.split{$0 == " "}.map(String.init)
    let max:Int = Int(first[0])!
    let reg:Int = Int(first[1])!
    let second = readLine()!.characters.split{$0 == " "}.map(String.init)
    for student in second {
        if Int(student)!<=0{count+=1}
    }
    if count >= reg {print("NO")} else {print("YES")}
}
