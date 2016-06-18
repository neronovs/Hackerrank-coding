import Foundation
var h = Int(readLine()!)!
var m = Int(readLine()!)!
var hr = h + 1
let formatter = NSNumberFormatter()
formatter.numberStyle = .SpellOutStyle
var min = formatter.stringFromNumber(m)!.stringByReplacingOccurrencesOfString("-", withString: " ")
var m30 = formatter.stringFromNumber(60-m)!.stringByReplacingOccurrencesOfString("-", withString: " ")
if hr==13 {hr = 1}
if m==0 {print("\(formatter.stringFromNumber(h)!) o' clock")}
if m==1 {print("\(formatter.stringFromNumber(m)!) minute past \(formatter.stringFromNumber(h)!)")}
if m>1 && m<30 && m != 15 {print("\(min) minutes past \(formatter.stringFromNumber(h)!)")}
if m==15 {print("quarter past \(formatter.stringFromNumber(h)!)")}
if m==30 {print("half past \(formatter.stringFromNumber(h)!)")}
if m>30 && m<45 {print("\(m30) minutes to \(formatter.stringFromNumber(hr)!)")}
if m==45 {print("quarter to \(formatter.stringFromNumber(hr)!)")}
if m>45 && m<59{print("\(formatter.stringFromNumber(60-m)!) minutes to \(formatter.stringFromNumber(hr)!)")}
if m==59{print("\(formatter.stringFromNumber(60-m)!) minute to \(formatter.stringFromNumber(hr)!)")}
