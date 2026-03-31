// Date : 31-03-2026
// Name : SAM SOPHAL
// Role : Mobile Apps developments

import SwiftUI

struct ContentView : View {
    // Adding state for a variable
    @State private var username : String = ""
    @State private var password : String = ""
    @State private var showalert = false
    @State private var checked = false
    @State private var phone = false
    @State private var setting = false
    @State private var mul_buttons = false
    @State private var ch_buttons = false
    @State private var texts = ""
    let name_list = ["Un virak","vatanak","Tola","Vuntoeun","Cheatra","Sokun","Nita","Cheat"];
    let universitys = ["NU","USH","BBU","RUPP","NUM","CUS"];
    let colors = ["GREEN","BLUE","RED","WHITE","BLACK","WHITE"];
    let fruits = ["Banana","Cherry","Orange","Duran","Lettuce"];
    
    // Dynamic Buttons
    var body: some View {
        
        // Showing alert message
        HStack{
            Button("Login"){
                showalert = true
            }
            .alert("Warning", isPresented: $showalert){
                Button("OK", role: .cancel){}
            }message: {
                Text("Something wrong message !")
            }
            Button("Check Info"){
                checked = true
            }
            .alert("Error Handling", isPresented: $checked){
                Button("OK", role: .confirm){}
            }message: {
                Text("Error! Cannot divide by zero !");
            }
            
            Button("Phone Number"){
                phone = true
            }.alert("Info Phone", isPresented: $phone){
                Button("OK !", role: .close){}
            }message: {
                Text("smart : 015975701")
                Text("Cellcard : 017907913")
            }
            
            Button("Setting"){
                setting = true
            }.alert("Setting", isPresented: $setting){
                Button("OK ! Please comfirm!", role: .confirm){}
            }message: {
                VStack{
                    Button("Sign Up"){}
                    Button("Logout"){}
                }
            }
            
        }
        
        HStack{
            // Alert with multiple Buttons
            Button("Alert Multiple Button"){
                mul_buttons = true
            }.alert("Multiple", isPresented: $mul_buttons){
                Button("Add"){}
                Button("View"){}
                Button("Update"){}
                Button("Search"){}
                Button("Delete"){}
                Button("Sort"){}
                
            }message: {
                Text("Showing Multiple Buttons")
            }
        }
        
        // Change message one to one
        VStack{
            Button("Change Message"){
                texts = "Welcome to Learning Swift Programing!";
                ch_buttons = true
            }.alert("Alert Now !", isPresented: $ch_buttons){
                Button("Change Now"){}
            }message: {
                Text("Change Succesfully!")
            }
        }
        
        
        
        // Using stacking Up Buttons --> showing Multiple name
        VStack(spacing : 25){
            // stacking up buttons
            ForEach(name_list, id: \.self){ item in
                Button(item){
                    print("Succesfully !")
                }
                
            }
        }
        
        
        // Espresio 2
        
        HStack{
            // stacking up buttons
            ForEach(universitys, id: \.self){ u in
                Button(u){
                    print("Succesfully !");
                }
            }
        }
        HStack{
            ForEach(colors, id: \.self){ i in
                Button(i){
                    print("Showing Result")
                }
            }
        }
        HStack{
            ForEach(fruits, id: \.self){ a in
                Button(a){
                    print("Displaying result!");
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
