import Foundation

struct Student : Information{
    var id = 101
    var name = "Un virak"
    var role = "Information technology"

    
}

protocol Information{
    var id : Int {set get}
    var name : String {set get}
    var role : String {set get}
}

// Iniatialize obj
let stu = Student()
print(stu.id)
print(stu.name)
print(stu.role)


struct Staff : Role{
    var names = "Un kosal"
    var role = "IT Specialisted"
    var salary = 54.3
    
}


protocol Role{
    var names : String {set get}
    var role : String {set get}
    var salary : Double {set get}
    
}

let s = Staff()
print(s.names)
print(s.role)
print(s.salary)

