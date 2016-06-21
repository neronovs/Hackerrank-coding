var num = Int(readLine()!)!
let arr = String(num, radix: 2).characters.flatMap{Int(String($0))}
var count = 0
var max = 0
for digit in arr{
    if digit == 1 {count += 1} else {if count > max {max = count}; count = 0}
    if count > max {max = count}
}
print (max)
