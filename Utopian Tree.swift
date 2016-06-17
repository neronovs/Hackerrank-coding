// Enter your code here 
var n = Int(readLine()!)!
for i in 1...n{
    var h = 1
    var p = Int(readLine()!)!
    if p>0 {
        for c in 1...p{ 
            if c%2>0 {h*=2} else {h+=1} 
            }
    }
    print(h)
}
