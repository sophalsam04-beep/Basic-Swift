import Foundation

let fruit = ["Banana","Cherry","Orange","Juice","Papaya"];
let result = fruit.sorted { $0 > $1}
let name_school = ["Norton University","University of Health sciencec","University of cambodia","PUC Institude of Foreign language"];
let results = name_school.sorted { $1 > $0 }
print(results)
print(result)

let result1 = name_school.contains { $0 == "Norton University" }
print(result1)

let role : Set<String> = ["A","B","C","University of Health science"];
let result2 = role.contains { $0 == "University of Health science"};
let result3 = role.contains { $0 == "D"};
print(result3)
print(result2)

// sorted with backward result
func backward(_ s1:String,_ s2:String)-> Bool{
    return s1 > s2;
    
}
let result4 = backward("Norton University", "University of Health science");
print(result4)

let drinks = ["Coca cola","IDOL Fest","Carabao","Champion","Boostrong"];
// reverse type of closures is the list
func backwards(_ x1:String,_ x2:String)->Bool{
    return x1 < x2;
}

// using to closures to store
let result5 = drinks.sorted()
print(result5)

let departments = ["Mobile Apps development","Web development","Graphic design","Content creator","UI/UX"];
let result6 = departments.sorted {
    // iniatialize a
    // iniatialize b
    // Compare two elements
    a, b in
    if a == "Mobile Apps development" { return true }
    if b == "Cyber security" { return false }
    return a < b;
}

print(result6)

let employees = ["Kakada","Un virak","Chan mithona","Kong vathana","Chea sokheng"];
let result7 = employees.sorted {
    x, y in
    if x == "Un virak" { return x > y   }
    if y == "Kun tola" { return y > x }
    
    return x > y;
}


let names = ["Chea sokheng","Vong Rathana","Ros sokha"];
let reveredName = names.sorted(by: { s1 , s2 in s1 > s2 })
print(reveredName)

let colors = ["Green","Yellow","Orange","Blue","Purple"];
let reveredColor = colors.sorted(by: { a1, a2 in a2 > a1})
print(reveredColor)


// using to closures
let reveredcolors = colors.sorted(by: {
    x1, x2 in
    return x1 > x2
})

print(reveredcolors)
