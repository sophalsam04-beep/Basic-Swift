import Foundation

var fruits = ["Apple","Banana","Cherry","Orange"];
print(fruits[0]) // acessing element from one values
print(fruits[1])
print(fruits[2])

var name = ("University","Norton university");
print(name.0)
print(name.1)
// Dictionary
var university = ["name" : "RUPP", "age" : "25"];
print(university["name"] ?? "") // using to dictionary to calling university
print(university["age"] ?? "")

var Employees = ["id" : "101", "name":"Un virak", "role" : "Information technology"];
print(Employees["id"]!)
print(Employees["name"]!)
print(Employees["role"]!)

// using subscript in class | struct
struct Employee{
    subscript(n : Int)->Int{
        return n * n;
    }
}

class Student{
    subscript(score : Double)->Double{
        return score * score;
    }
}


struct 
