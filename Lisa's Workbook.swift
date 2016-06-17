// Enter your code here 
import Foundation
var s = String(readLine()!)
let chapters:Int = Int(s.characters.split{$0 == " "}.map(String.init)[0])!
let perpage:Int = Int(s.characters.split{$0 == " "}.map(String.init)[1])!
s = String(readLine()!)
let problems = s.characters.split{$0 == " "}.map(String.init)
var pages = 0
var result = 0
var currprob = 0
for problem in problems {
    pages += 1
    var pageprob=0
    for i in 1...Int(problem)!{
        currprob += 1
        pageprob += 1
        if pages == i { result+=1 }
        if pageprob == perpage && i != Int(problem){
            pages += 1
            pageprob = 0
            }
    }
}
print(result)
