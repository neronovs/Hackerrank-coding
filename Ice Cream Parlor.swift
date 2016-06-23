var t = Int(readLine()!)!
for _ in 1...t{
    var sum = Int(readLine()!)!
    var n = Int(readLine()!)!
    let arr = String(readLine()!).characters.split{$0 == " "}.map(String.init).map{Int($0)!} 
    var stop = false
    for i in 0..<n-1 {
        for j in i+1..<n {
            if arr[i] + arr[j] == sum {
                print("\(i+1) \(j+1)")
                break
            }
        }
        if stop {break}
    }
}
