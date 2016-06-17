// Enter your code here 
import Foundation
func getArray() -> Array<String> {
    let s = String(readLine()!)
    let y = Int(s.characters.split{$0 == " "}.map(String.init)[0])!
    var arr = Array(count: y, repeatedValue: " ")
    for iy in 0...y-1 { arr[iy] = String(readLine()!) }
    return arr
}
func checkSub(firstString s:String, sub:String) -> Array<Int> {
    var arr:[Int] = []
    var string = s
    var add = 0
    while string.rangeOfString(sub) != nil {
        if let r = string.rangeOfString(sub) {
            let rInt = Int(String(r.endIndex))!-1
            string.removeRange(string.startIndex...string.startIndex.advancedBy(rInt))
            arr.append(rInt+add)
            add += rInt+1
        }
    }
    return arr
}
func check(x:Int, y:Int, arr:Array<String>, arrs:Array<String>) -> Bool {
    var result = true
    var count = 0
    if arrs.count+y-1>=arr.count {result=false}else{
        for i in y...y+arrs.count-1{
            let s2 = arrs[count].characters.count
            let s1 = arr[i][arr[i].startIndex.advancedBy(x-s2+1)...arr[i].startIndex.advancedBy(x)]
//            print("\(arr[i]) s1=\(s1) arrs[count]=\(arrs[count]) x=\(x)")
            if s1 != arrs[count] { result = false }
            count += 1
        }
    }
//print("\(result)----")
    return result
}
var n = Int(readLine()!)!
for i in 1...n {
    var arr = getArray()
    var arrs = getArray()
    var index = 0 
    var pos = 0 
    var result = "NO" 
    for string in arr {
        if result == "NO" {
            if let r = string.rangeOfString(arrs[0]) { 
                let matrix = checkSub(firstString: string, sub: arrs[0])
                for d in matrix{
                    if check(d, y:index, arr:arr, arrs:arrs) {result = "YES"}
                }
            }
        }
        index+=1 
    }
    print(result)
}
