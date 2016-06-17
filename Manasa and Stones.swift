// Enter your code here 
let t = Int(readLine()!)!
for _ in 1...t{
    let n = Int(readLine()!)!
    let a = Int(readLine()!)!
    let b = Int(readLine()!)!
    var result:[Int] = []
    var ara = Array(count: n-1, repeatedValue: a)
    var arb = Array(count: n-1, repeatedValue: b)
    for i in 1...n-1{
        var res = 0
        for d in ara{ res += d}
        if !result.contains(Int(res)) {result+=[Int(res)]}
        ara[i-1] = b
        res = 0
        for d in arb{ res += d}
        if !result.contains(Int(res)) {result+=[Int(res)]}
        arb[i-1] = a
     }
    result.sortInPlace(<)
    var arrres:[String]=[]
    for num in result {arrres += [String(num)]}
    print(arrres.joinWithSeparator(" "))
}
