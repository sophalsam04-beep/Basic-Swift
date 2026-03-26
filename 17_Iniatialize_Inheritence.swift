import Foundation

class Employee{
    func nameSound(){
        print("Name is Virak un");
    }
}

class staff : Employee{
    override func nameSound() {
        super.nameSound()
        print("Senior is heighest salary than Junior !");
    }
}
let st = Employee()
st.nameSound()
let sts = staff()
sts.nameSound()
