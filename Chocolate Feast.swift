// Enter your code here 
let cases = Int(readLine()!)!
for _ in 1...cases{
    let s = String(readLine()!)
    let arr = s.characters.split{$0 == " "}.map(String.init)
    var m = Int(arr[2])!
    var qtty = Int(arr[0])!/Int(arr[1])!
    var wrap = Int(arr[0])!/Int(arr[1])!
    while wrap >= m { 
        let add = wrap/m
        qtty += add
        wrap -= add*m
        wrap += add
    }
    print(qtty)
}
