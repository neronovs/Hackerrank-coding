// Enter your code here 
var n = Int(readLine()!)!
for _ in 1...n{
    var count = 0
    let d = Int(readLine()!)!
    var s = String(d)
    for c:Character in s.characters{
        var i:Int = Int(String(c))!
        if i>0 {
            if d%i==0 {count+=1}
        }
    }
    print(count)
}
