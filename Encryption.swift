import Foundation
let str = String(readLine()!)
let len:Int = Int(str.characters.count)
var row = Int(floor(sqrt(Double(len)))) //height
let col = Int(ceil(sqrt(Double(len)))) //width
if row*col < len { row += 1 }
var arr:[[String]] = Array(count: row, repeatedValue: Array(count: col, repeatedValue: ""))
var dx = 0
var dy = 0
for char in str.characters{
    arr[dy][dx] = String(char)
    dx += 1
    if dx == col { dx = 0; dy += 1 }
}
for y in 0...col-1{
    for x in 0...row-1{
        print(arr[x][y],terminator:"")
    }
    print(" ",terminator:"")
}
