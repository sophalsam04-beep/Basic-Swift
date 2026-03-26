// Note
// Inheritence is the class can inherited from other class
// inheritence used class can not used in struct ans enum
// using to keyword --> override for editing data member and methods
// inherited as single class from one to one
// can not override can not used override
// inherited using --> :
import Foundation

class Employee{
    var id:Int = 0
    var name : String = ""
    var role : String = ""
    init(id : Int, name : String, role : String){
        self.id=id
        self.name=name
        self.role = role
    }
    func open(){
        print("ID : \(id), Name : \(name), Role : \(role)");
    }
}

class PartTimeEmployee : Employee{
    var hourlywork : Double
    var hourlyrate : Double
    
    init(id : Int,hourlywork: Double, hourlyrate: Double) {
        self.hourlywork = hourlywork
        self.hourlyrate = hourlyrate
        super.init(id: 101, name: "Un virak", role: "Information Technology");
    }
    override func open() {
        super.open()
        print("Hourlywork : \(hourlywork), HourlyRate : \(hourlyrate)");
    }
}

class FullTimeEmployee : Employee{
    var bonus : Double
    var incentives : Double
    
    init(id : Int, bonus : Double, incentive : Double){
        self.bonus = bonus
        self.incentives = incentive
        super.init(id: 122, name: "Van da", role: "IT Support");
    }
    override func open() {
        super.open()
        print("Full Time Employee : ID : \(id), Name : \(name), Bonus : \(bonus), Incentive : \(incentives) !");
    }
    
}

let emp = Employee(id: 101, name: "Un virak", role: "Informatio Technology");
let pt = PartTimeEmployee(id: 102, hourlywork: 100.3, hourlyrate: 55.3)
let ful = FullTimeEmployee(id: 103, bonus: 94.2, incentive: 50.55);

emp.open()
pt.open()
ful.open()
