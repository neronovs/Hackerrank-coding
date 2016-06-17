// Enter your code here 
let act = String(readLine()!).characters.split{$0 == " "}.map(String.init)
let exp = String(readLine()!).characters.split{$0 == " "}.map(String.init)
if Int(act[2])>Int(exp[2]){ print(10000)} else
if Int(act[1])>Int(exp[1]) && Int(act[2])==Int(exp[2]) { print((Int(act[1])!-Int(exp[1])!)*500)} else
if Int(act[0])>Int(exp[0]) && Int(act[2])==Int(exp[2]) && Int(act[1])==Int(exp[1]){ print((Int(act[0])!-Int(exp[0])!)*15)} else {print(0)}
