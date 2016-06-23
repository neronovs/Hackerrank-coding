import Foundation
func fillDic( arr:[Int] , add:Int, inout dic: [Int: Int] ) {
    for i in arr { 
        if let val = dic[i] { 
            dic[i] = val+add 
        } else { 
            dic[i] = add
        } 
    }
}
var dic = [Int: Int]()
var a = Int(readLine()!)!
let arra = String(readLine()!).characters.split{$0 == " "}.map(String.init).map{Int($0)!}
var b = Int(readLine()!)!
let arrb = String(readLine()!).characters.split{$0 == " "}.map(String.init).map{Int($0)!}
if a>b { 
    fillDic(arra,add:1,dic:&dic) 
    fillDic(arrb,add:-1,dic:&dic)
} else {
    fillDic(arrb,add:1,dic:&dic)
    fillDic(arra,add:-1,dic:&dic) 
}
var arr:[String] = []
for (key, value) in dic {
    if value > 0 { arr.append(String(key)) }
} 
print(arr.sort().joinWithSeparator(" "))
