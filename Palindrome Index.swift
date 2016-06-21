func isPoly(arr:Array<Character>)->Int{
    for i in (0..<arr.count) {
        if arr[i] != arr[arr.count-i-1] { 
            var res = i
            if arr[arr.count/2] != arr[arr.count/2+1] { res = arr.count-i-1 }
            return res 
        }
    }
    return -1
}
var t = Int(readLine()!)!
for _ in (0..<t) { 
    print(isPoly(Array(readLine()!.characters)))
}
