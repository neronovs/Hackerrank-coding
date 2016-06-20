func factorial(x:Int) -> Int {
     if x<1 { return 1 }
    return x*factorial(x-1)
}
var n = Int(readLine()!)!
print(factorial(n))
