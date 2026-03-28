import SwiftUI


struct ContentView : View {
    
    // Binding state to UI Controls
    @State private var username : String = ""
    @State private var password : String = ""
    @State private var isstudent : Bool = false
    @State private var role = "user";
    let names = ["Admin","Law","IT","Khmer Literature","English teacher"];
    @State private var id : Int = 101;
    @State private var name : String = "Un virak";
    @State private var department : String = "Information technology";
    @State private var isstudents : Bool = true;
    let fruits = ["Apple","Banana","Cherry","Dart","Strawberry"];
    let universitys = ["Norton University","University of Health Science","University of Cambodia"];
    @State private var ages : Double = 18;
    @State private var roles : String = "Mobile Apps developer";
    @State private var isOn : Bool = true;
    var body: some View {
        NavigationStack{
            VStack{
                Picker("Role", selection: $role){
                    ForEach(universitys,id: \.self){
                        Text($0)
                    }
                }
                Slider(value: $ages, in: 0...100){
                    Text("Age : \(ages)")
                }
                
                Text("My types : \(roles)")
                TextField("Enter your name :", text: $name).textFieldStyle(.roundedBorder)
                
                Toggle("Switch", isOn: $isOn)
                ScrollView(.vertical){
                    // Loop with array elements
                    ForEach(universitys, id: \.self){
                        i in Text(i)
                    }
                }
                
                Form{
                    Section(header: Text("Roles")){
                        ForEach(["Admin","IT","Law","English","Web development","Mobile Apps development","UX/UI Designer","Senior IT Specialist"], id: \.self){
                            roles in Text(roles)
                        }
                    }
                }
            }
        }
    }
    
}

struct SecondPage : View {
    var body: some View {
        Text("fdjkbfndsbjf")
    }
}
#Preview {
    ContentView()
}
