import Foundation
let n = Int(readLine()!)!
var arr = String(readLine()!).characters.split{$0 == " "}.map(String.init).map { Int($0)!}
for i in 1..<n{
    var l = i
    while arr[l-1] > arr[l] {
        swap(&arr[l], &arr[l-1])
        l -= 1
        if l<1 { break }
    }
    print(arr.flatMap { String($0) }.joinWithSeparator(" "))
}
