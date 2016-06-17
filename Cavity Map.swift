// Enter your code here 
var n = Int(readLine()!)!
var arr = Array(count: n, repeatedValue: Array(count: n, repeatedValue: "0"))
for y in 0...n-1{ 
    let arrl = String(readLine()!).characters.map { String($0) }
    for x in 0...n-1{ arr[x][y] =  arrl[x] } 
}
for y in 0...n-1{
     for x in 0...n-1{
        if x>0 && x<n-1 && y>0 && y<n-1{
        var cur = Int(arr[x][y])!
        if cur>Int(arr[x-1][y])! && cur>Int(arr[x+1][y])! && cur>Int(arr[x][y-1])! && cur>Int(arr[x][y+1])! { 
             print("X", terminator:"")
        } else {print(arr[x][y], terminator:"")}
        } else {print(arr[x][y], terminator:"")}
        
    }
    print()
}
