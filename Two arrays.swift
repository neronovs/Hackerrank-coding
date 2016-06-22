var t = Int(readLine()!)!
for _ in 1...t {
let tmp = String(readLine()!).characters.split{$0 == " "}.map(String.init).map{Int($0)!}
let n = tmp[0]
let k = tmp[1]
var a = String(readLine()!).characters.split{$0 == " "}.map(String.init).map{Int($0)!}
var b = String(readLine()!).characters.split{$0 == " "}.map(String.init).map{Int($0)!}
a = a.sort { $0 > $1 }
b = b.sort { $0 < $1 }
var res = "YES"
for i in 0 ..< n {
    if a[i] + b[i] < k {
        res = "NO"
        break
    }
}
print(res)
}
