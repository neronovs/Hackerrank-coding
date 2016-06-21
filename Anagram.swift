var t = Int(readLine()!)!
for _ in (0..<t) {
    var arr = Array(readLine()!.characters)
    if arr.count % 2 != 0 {
        print("-1")
    } else
    {
    var le = [Int](count: 26, repeatedValue: 0)
    var count = 0
    var half = arr.count / 2
    for i in (0..<half) {
        le[Int(Array(String(arr[i]).utf8)[0]) - 97] += 1
        le[Int(Array(String(arr[i+half]).utf8)[0]) - 97] -= 1
    }
    for i in (0..<26) {
        count = count + abs(le[i])
    }
    print(String(count / 2))
    }
}
