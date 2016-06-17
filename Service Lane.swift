// Enter your code here 
var s = String(readLine()!)
var nt = s.characters.split{$0 == " "}.map(String.init)
s = String(readLine()!)
var wArr = s.characters.split{$0 == " "}.map(String.init)
for _ in 1...Int(nt[1])!{
    s = String(readLine()!)
    var res = 3
    var inOut = s.characters.split{$0 == " "}.map(String.init)
    for i in Int(inOut[0])!...Int(inOut[1])!{
        if res>Int(wArr[i])! {res=Int(wArr[i])!}
    }
    print(res)
}
