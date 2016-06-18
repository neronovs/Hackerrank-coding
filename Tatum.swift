var t = Int(readLine()!)!
for _ in 1...t{
var s = String(readLine()!)
let b = Int(s.characters.split{$0 == " "}.map(String.init)[0])!
let w = Int(s.characters.split{$0 == " "}.map(String.init)[1])!
s = String(readLine()!)
let x = Int(s.characters.split{$0 == " "}.map(String.init)[0])!
let y = Int(s.characters.split{$0 == " "}.map(String.init)[1])!
let z = Int(s.characters.split{$0 == " "}.map(String.init)[2])!
if x+z<y {print(((b+w)*x)+w*z) } else
if y+z<x {print(((b+w)*y)+b*z) } else {print(b*x+w*y) }
}
