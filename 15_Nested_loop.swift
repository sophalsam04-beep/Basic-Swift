import Foundation

var a = 10
var b = 10

while a<=10{
    while b<=10{
        print("a=\(a) and b=\(b)")
        b+=1
    }
    a+=1
}

for i in 1...3{
    for j in 1...3{
        print("\(i)*\(j)=\(i*j)")
    }
}

for c in 1...5{
    for _ in 1...c{
        print("*", terminator: "")
    }
}

