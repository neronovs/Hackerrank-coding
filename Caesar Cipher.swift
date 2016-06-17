// Enter your code here 
var n = Int(readLine()!)!
var s = String(readLine()!)
var a = Int(readLine()!)!
var add = a
if add > 26 && add < 53 {add -= 26}
if add > 52 && add < 79 {add -= 52}
if add > 78 {add -= 78}
for i in s.utf16{
    //A-Z 65-90 / a-z 97-122
    var d:Int = Int(i)
    if (i>64 && i<91) {d+=add; if d>90 {d-=26} }
    if (i>96 && i<123){d+=add; if d>122 {d-=26} }
    let c = Character(UnicodeScalar(d))
    print(c, terminator:"")
}
