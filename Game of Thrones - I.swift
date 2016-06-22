var arr = String(readLine()!).utf16.sort()
var count = 1
var odd = 0
for i in 1..<arr.count { 
    if arr[i]==arr[i-1] { count += 1} else {
        if count%2 > 0 { odd += 1 }
        if count == 0 { odd += 1 }
        if odd > 1 { break }
        count = 1
    }
}
if odd>1 {print("NO")} else {print("YES")}
