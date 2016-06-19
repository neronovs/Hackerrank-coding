import Foundation
let n = Int(readLine()!)!
for _ in 1...n{
    let s = String(readLine()!).characters.map { String($0) }
    let l = s.count
    var a = 0
    for(var j=0;j<l-j-1;j+=1){
        let first = s[j].unicodeScalars.first?.value
        let second = s[l-j-1].unicodeScalars.first?.value
        let di: Int = Int(first!) - Int(second!)
        if s[j] != s[l-j-1] { a += abs(di) }
    }
    print(a)
}
