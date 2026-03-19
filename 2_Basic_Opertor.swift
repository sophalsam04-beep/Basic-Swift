import Foundation

func AddNumber(a:Int, b:Int, c:Int)->Int{
    return a + b + c
}

let result = AddNumber(a: 10, b: 4, c: -7)
print(result)

let str = "un virak"
if str == "un virak"{
    print("Name is \(str)")
}else{
    print("Name is not \(str)")
}

// Comparision Operator // Binary operator
let premium = ("Blue",-1) < ("Green",1); // Binary operator
let ispremium = ("Pink",-1) > ("yellow", 2);
let addition = ("Un virak", -1) == ("Prum chansamedy",1);
let notpremium = ("Grape",2) != ("Lettuce",-2);
print(premium)
print(ispremium)
print(addition)
print(notpremium)

// Ternary Operator -> short hand compose if-else
let age = 25
let results = age >= 18 ? "Dara" : "Un virak"
print(results)


// short hand for Ternary operator
let header = 40
let contentheader = true
let rowheader = header + (contentheader ? 50 : 30) // Syntax : result ? valueifTrue : valueifFalse
let width = 1.70
let height = true
let wh = width + (height ? 1.70 : 1.68)
print(wh)

// if-else statement
let rowcontent = 35
let columncontent = true
let p : Int // Optional operator != | ? | ??

if columncontent {
        p = rowheader + 50
}else{
    p = rowheader + 20
}

print(p)

// Nil Coalescing oeprator
let name:String? = "Un virak"
let fullname = name ?? "Tech Lead of IT"; // review : ternary operator -> result ? valueifTrue : valueifFalse
print(fullname) // Nil coalescing operator // value ?? defaultvalues
                   // value --> is the values used it
                   // defaultvalue --> nil opeator --> ??
let score : Int? = 70
let mark  = score ?? 0
print(mark)

let s : Double? = nil
let a = s ?? 40
print(a)
