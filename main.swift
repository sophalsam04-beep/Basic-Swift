import Foundation

let id : Int = 101;
let name :String = "Un virak";
let role : String = "IT";
let isStudent : Bool = true
let fruit  = ["Apple","Orange","Cherry","Lettucec"];

func Add(x:Int, y:Int, z:Int)->Int{
    return x+y+z;
}
let result = Add(x: 10, y: 32, z: 15);
print(result)

func SquareRoot(x:Int, y:Int)->Int{
    return (x*x) + (y*y);
}

// Learning Map / Fliter / Sorting
private var selected = "";
struct Employee{
    var emp_id : Int
    var emp_name:String
    var emp_role : String
    var emp_salary : Int
    
}

let employee = [
    Employee(emp_id: 101, emp_name: "Un virak", emp_role: "IT", emp_salary: 500),
    Employee(emp_id: 102, emp_name: "Rinh roza", emp_role: "Law", emp_salary: 350),
    Employee(emp_id: 101, emp_name: "sinh bona", emp_role: "Graphic designer", emp_salary: 250),
    Employee(emp_id: 101, emp_name: "banh kunthea", emp_role: "Archeture", emp_salary: 300),
    Employee(emp_id: 101, emp_name: "Vy noreak", emp_role: "Khmer literature", emp_salary: 500),
    Employee(emp_id: 101, emp_name: "Nith sivchun", emp_role: "History teacher", emp_salary: 500),
    Employee(emp_id: 101, emp_name: "kun naren", emp_role: "Math teacher", emp_salary: 500),
    Employee(emp_id: 101, emp_name: "Chea vichetra", emp_role: "Computer science", emp_salary: 500),
]

for i in employee{
    print(i)
}

// map --> used to select single one option into multiple options

let fruits = ["Apple","Banana","Cherry","Orange","Durean"];
let flitered = fruit.filter{
    fruit in fruit.uppercased().contains("A")
}
print(flitered)

let namess = ["Kunthea","Un virak","Bonna","Pich nah","Punly "];
let flitereds = namess.filter{
    n in n.lowercased().contains("a");
}
print(flitereds)

// Map --> used to transform data of collection and return a new arrays it just declare arrays values of element
let roles = ["Information technology","Github","Mobile Apps","Web apps","Graphic designer"];
let e = roles.map{
    $0.lowercased()
}
print(e)

struct student{
    var name : String
    var role : String
}

let s = [
    student(name: "Un virak", role: "Tech Lead of IT"),
    student(name: "Prum chansamedy", role: "Tech Lead of IT"),
    student(name: "Chan Mithona", role: "Master of teacher IT"),
    student(name: "Luy Mithona", role: "Vice Dean of Director Computer science"),
    student(name: "Sam Onn", role: "General Manager of IT"),
];

for ss in s{
    print(ss)
}

let numbers = [1,2,3,4,4,55,34,111];
let sortednumbers = numbers.sorted{
    $0 < $1  // sorted as small to big
}
print(sortednumbers)

let number = [111,34,22,434,24,53,333];
let sortedn = number.sorted{
    $0 > $1 // sort as big to small
}
print(sortedn)
