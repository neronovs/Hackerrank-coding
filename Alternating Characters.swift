let n = Int(readLine()!)!
var result = 0
for _ in 1...n{
    var arr = String(readLine()!).characters.map { String($0) }
    var cur = arr[0]
    for i in 1..<arr.count{
       if cur == arr[i] {result+=1} else {cur=arr[i]}
    }
    print(result)
    result=0
}
