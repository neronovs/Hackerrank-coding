struct bread {
    var time = 0
    var index = 0
}
let n = Int(readLine()!)!
var time:[bread]=[]
for i in 1...n{
    let s = String(readLine()!)
    let first = Int(s.characters.split{$0 == " "}.map(String.init)[0])!
    let second = Int(s.characters.split{$0 == " "}.map(String.init)[1])!
    time += [bread(time:first+second, index:i)]
}
let indexed = time.sort() { $0.time < $1.time }
var index = 0
for element in indexed {
    index += 1
    let pr = String(element.index)
    if index != indexed.count {print(pr,terminator:" ")} else {print(pr,terminator:"")}
}
